
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lancer_cmd_resp_read_object {int additional_status; int eof; int actual_read_len; } ;
struct lancer_cmd_req_read_object {void* addr_high; void* addr_low; void* buf_len; void* descriptor_count; int object_name; void* read_offset; void* desired_read_len; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int dma; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_READ_OBJECT ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strcpy (int ,char const*) ;
 int upper_32_bits (int) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int lancer_cmd_read_object(struct be_adapter *adapter, struct be_dma_mem *cmd,
  u32 data_size, u32 data_offset, const char *obj_name,
  u32 *data_read, u32 *eof, u8 *addn_status)
{
 struct be_mcc_wrb *wrb;
 struct lancer_cmd_req_read_object *req;
 struct lancer_cmd_resp_read_object *resp;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err_unlock;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
   OPCODE_COMMON_READ_OBJECT,
   sizeof(struct lancer_cmd_req_read_object), wrb,
   ((void*)0));

 req->desired_read_len = cpu_to_le32(data_size);
 req->read_offset = cpu_to_le32(data_offset);
 strcpy(req->object_name, obj_name);
 req->descriptor_count = cpu_to_le32(1);
 req->buf_len = cpu_to_le32(data_size);
 req->addr_low = cpu_to_le32((cmd->dma & 0xFFFFFFFF));
 req->addr_high = cpu_to_le32(upper_32_bits(cmd->dma));

 status = be_mcc_notify_wait(adapter);

 resp = embedded_payload(wrb);
 if (!status) {
  *data_read = le32_to_cpu(resp->actual_read_len);
  *eof = le32_to_cpu(resp->eof);
 } else {
  *addn_status = resp->additional_status;
 }

err_unlock:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
