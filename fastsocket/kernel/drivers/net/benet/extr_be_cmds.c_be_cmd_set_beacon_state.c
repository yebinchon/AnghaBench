
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_enable_disable_beacon {void* status_duration; void* beacon_duration; void* beacon_state; void* port_num; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int OPCODE_COMMON_ENABLE_DISABLE_BEACON ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_enable_disable_beacon* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_beacon_state(struct be_adapter *adapter, u8 port_num,
   u8 bcn, u8 sts, u8 state)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_enable_disable_beacon *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_ENABLE_DISABLE_BEACON, sizeof(*req), wrb, ((void*)0));

 req->port_num = port_num;
 req->beacon_state = state;
 req->beacon_duration = bcn;
 req->status_duration = sts;

 status = be_mcc_notify_wait(adapter);

err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
