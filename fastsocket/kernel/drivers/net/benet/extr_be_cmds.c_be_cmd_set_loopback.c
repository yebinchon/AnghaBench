
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_set_lmode {void* loopback_state; void* loopback_type; void* dest_port; void* src_port; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_LOWLEVEL ;
 int EBUSY ;
 int OPCODE_LOWLEVEL_SET_LOOPBACK_MODE ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_set_lmode* embedded_payload (struct be_mcc_wrb*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_set_loopback(struct be_adapter *adapter, u8 port_num,
   u8 loopback_type, u8 enable)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_set_lmode *req;
 int status;

 spin_lock_bh(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
   OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, sizeof(*req), wrb,
   ((void*)0));

 req->src_port = port_num;
 req->dest_port = port_num;
 req->loopback_type = loopback_type;
 req->loopback_state = enable;

 status = be_mcc_notify_wait(adapter);
err:
 spin_unlock_bh(&adapter->mcc_lock);
 return status;
}
