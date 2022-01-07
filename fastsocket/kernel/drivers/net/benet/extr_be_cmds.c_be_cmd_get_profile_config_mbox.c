
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; struct be_cmd_req_get_profile_config* va; } ;
struct TYPE_2__ {int version; int domain; } ;
struct be_cmd_req_get_profile_config {TYPE_1__ hdr; int type; } ;
struct be_adapter {int mbox_lock; } ;


 int ACTIVE_PROFILE_TYPE ;
 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_GET_PROFILE_CONFIG ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int lancer_chip (struct be_adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_get_profile_config_mbox(struct be_adapter *adapter,
       u8 domain, struct be_dma_mem *cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_profile_config *req;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;
 wrb = wrb_from_mbox(adapter);

 req = cmd->va;
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_PROFILE_CONFIG,
          cmd->size, wrb, cmd);

 req->type = ACTIVE_PROFILE_TYPE;
 req->hdr.domain = domain;
 if (!lancer_chip(adapter))
  req->hdr.version = 1;

 status = be_mbox_notify_wait(adapter);

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
