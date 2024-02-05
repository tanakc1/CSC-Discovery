#!/bin/bash

echo "Exporter [1] Bring UP  [2]  Bring Down" 
read  NO

if [ $NO == 1 ]; then
  cmd="nohup /usr/bin/python3 /home/avengers/prometheus-grafana-dell-main/powerstore_exporter.py &"
  eval $cmd
else
  ps -ef | grep "powerstore_exporter.py"	
  echo "PID :"
  read PID
  kill -9 $PID
  ps -ef | grep "powerstore_exporter.py"	
fi

