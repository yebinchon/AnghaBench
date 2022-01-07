
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; struct be_cmd_write_flashrom* va; } ;
struct TYPE_2__ {void* data_buf_size; void* op_code; void* op_type; } ;
struct be_cmd_write_flashrom {TYPE_1__ params; int hdr; } ;
struct be_adapter {int flash_status; int mcc_lock; int flash_compl; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_WRITE_FLASHROM ;
 int be_mcc_notify (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int ,struct be_mcc_wrb*,struct be_dma_mem*) ;
 void* cpu_to_le32 (int ) ;
 int msecs_to_jiffies (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_write_flashrom(struct be_adapter *adapter, struct be_dma_mem *cmd,
   u32 flash_type, u32 flash_opcode, u32 buf_size)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_write_flashrom *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);
 adapter->flash_status = 0;

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err_unlock;
 }
 req = cmd->va;

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_WRITE_FLASHROM, cmd->size, wrb, cmd);

 req->params.op_type = cpu_to_le32(flash_type);
 req->params.op_code = cpu_to_le32(flash_opcode);
 req->params.data_buf_size = cpu_to_le32(buf_size);

 be_mcc_notify(adapter);
 spin_unlock_bh(&adapter->mcc_lock);

 if (!wait_for_completion_timeout(&adapter->flash_compl,
   msecs_to_jiffies(40000)))
  status = -1;
 else
  status = adapter->flash_status;

 return status;

err_unlock:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
