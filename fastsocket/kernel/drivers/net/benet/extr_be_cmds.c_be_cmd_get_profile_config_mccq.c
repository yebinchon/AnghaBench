
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
struct be_adapter {int mcc_lock; } ;


 int ACTIVE_PROFILE_TYPE ;
 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_GET_PROFILE_CONFIG ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int lancer_chip (struct be_adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_profile_config_mccq(struct be_adapter *adapter,
       u8 domain, struct be_dma_mem *cmd)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_profile_config *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = cmd->va;
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_GET_PROFILE_CONFIG,
          cmd->size, wrb, cmd);

 req->type = ACTIVE_PROFILE_TYPE;
 req->hdr.domain = domain;
 if (!lancer_chip(adapter))
  req->hdr.version = 1;

 status = be_mcc_notify_wait(adapter);

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
