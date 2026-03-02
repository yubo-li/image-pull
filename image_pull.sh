#!/bin/bash

set -x

pull_registry="docker.io/vllm"
push_registry="ccr.ccs.tencentyun.com/liyb17"
image="vllm-openai:v0.14.0"
push_registry_user="100029081974"
push_registry_passwd="heatonli12345"


docker pull ${pull_registry}/${image}
docker tag ${pull_registry}/${image}  ${push_registry}/${image}
docker login ${push_registry} -u ${push_registry_user} -p ${push_registry_passwd};
docker push ${push_registry}/${image}