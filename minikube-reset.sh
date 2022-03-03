#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'  # No Color

echo -e "${RED}executing command: kubectl delete all --all \n${NC}" && kubectl delete all --all
echo -e "${RED}executing command: minikube stop \n${NC}" && minikube stop
echo -e "${RED}executing command: minikube delete \n${NC}" && minikube delete
echo -e "${RED}executing command: rm -rf ~/.minikube ~/.kube /etc/kubernetes \n${NC}" && rm -rf ~/.minikube ~/.kube /etc/kubernetes
echo -e "${RED}executing command: minikube start --insecure-registry=\"quay.io\" --vm-driver=docker --cpus 4 --memory 4098 \n${NC}" && minikube start --insecure-registry="quay.io" --vm-driver=docker --cpus 4 --memory 4098
echo -e "${RED}executing command: eval \$(minikube docker-env) \n${NC}" && eval $(minikube docker-env)
echo -e "${RED}executing command: minikube status \n${NC}" && minikube status
