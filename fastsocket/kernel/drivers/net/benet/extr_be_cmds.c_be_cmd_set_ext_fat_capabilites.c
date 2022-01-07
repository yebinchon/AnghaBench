
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_fat_conf_params {int dummy; } ;
struct be_dma_mem {int size; struct be_cmd_req_set_ext_fat_caps* va; } ;
struct be_cmd_req_set_ext_fat_caps {int hdr; int set_params; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_SET_EXT_FAT_CAPABILITES ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 int memcpy (int *,struct be_fat_conf_params*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_ext_fat_capabilites(struct be_adapter *adapter,
       struct be_dma_mem *cmd,
       struct be_fat_conf_params *configs)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_ext_fat_caps *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = cmd->va;
 memcpy(&req->set_params, configs, sizeof(struct be_fat_conf_params));
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_EXT_FAT_CAPABILITES,
          cmd->size, wrb, cmd);

 status = be_mcc_notify_wait(adapter);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
