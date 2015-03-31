#!/bin/bash

envtmpl -i config.yml.tmpl -o config.yml

etcdenv -n /environments/${RACK_ENV} -s http://172.17.42.1:4001 rackup -p $PORT
