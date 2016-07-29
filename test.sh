#!/bin/bash
kubectl create -f configmaps.yaml
kubectl create -f pod.yaml

sleep 10

kubectl logs dapi-test-pod

kubectl delete pod dapi-test-pod
kubectl delete configmap special-config
kubectl delete configmap cm
