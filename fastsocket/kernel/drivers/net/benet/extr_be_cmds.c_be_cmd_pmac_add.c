
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_pmac_add {int pmac_id; } ;
struct TYPE_2__ {int domain; } ;
struct be_cmd_req_pmac_add {int mac_address; int if_id; TYPE_1__ hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int EPERM ;
 int ETH_ALEN ;
 int MCC_STATUS_UNAUTHORIZED_REQUEST ;
 int OPCODE_COMMON_NTWK_PMAC_ADD ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le32 (int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_pmac_add(struct be_adapter *adapter, u8 *mac_addr,
  u32 if_id, u32 *pmac_id, u32 domain)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_pmac_add *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_NTWK_PMAC_ADD, sizeof(*req), wrb, ((void*)0));

 req->hdr.domain = domain;
 req->if_id = cpu_to_le32(if_id);
 memcpy(req->mac_address, mac_addr, ETH_ALEN);

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_pmac_add *resp = embedded_payload(wrb);
  *pmac_id = le32_to_cpu(resp->pmac_id);
 }

err:
 spin_unlock_bh(&adapter->mcc_lock);

  if (status == MCC_STATUS_UNAUTHORIZED_REQUEST)
  status = -EPERM;

 return status;
}
