#!/usr/bin/env bash

# Copyright 2018 The KubeSphere Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
K8S_HOME=$(dirname "${SCRIPTPATH}")

source "${K8S_HOME}/script/common.sh"

if [ "${ENV_INSTALL_KUBESPHERE}" == "true" ] && [ "${HOST_ROLE}" == "master" ] && [ "${HOST_SID}" == "1" ]
then
    log "reload ks console svc"
    kubectl apply -f /opt/kubernetes/k8s/kubesphere/ks-console/ks-console-svc.yaml
fi
exit 0