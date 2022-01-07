
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_fat {scalar_t__ log_size; } ;
struct be_cmd_req_get_fat {int fat_operation; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_MANAGE_FAT ;
 int QUERY_FAT ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le32 (int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_reg_len(struct be_adapter *adapter, u32 *log_size)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_fat *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_MANAGE_FAT, sizeof(*req), wrb, ((void*)0));
 req->fat_operation = cpu_to_le32(QUERY_FAT);
 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_fat *resp = embedded_payload(wrb);
  if (log_size && resp->log_size)
   *log_size = le32_to_cpu(resp->log_size) -
     sizeof(u32);
 }
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
