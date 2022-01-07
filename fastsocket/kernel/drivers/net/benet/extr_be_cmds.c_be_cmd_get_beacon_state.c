
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_beacon_state {int beacon_state; } ;
struct be_cmd_req_get_beacon_state {int port_num; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_GET_BEACON_STATE ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_get_beacon_state(struct be_adapter *adapter, u8 port_num, u32 *state)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_get_beacon_state *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_GET_BEACON_STATE, sizeof(*req), wrb, ((void*)0));

 req->port_num = port_num;

 status = be_mcc_notify_wait(adapter);
 if (!status) {
  struct be_cmd_resp_get_beacon_state *resp =
      embedded_payload(wrb);
  *state = resp->beacon_state;
 }

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
