
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_intr_set {int intr_enabled; int hdr; } ;
struct be_adapter {int mbox_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_SET_INTERRUPT_ENABLE ;
 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 struct be_cmd_req_intr_set* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_intr_set(struct be_adapter *adapter, bool intr_enable)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_intr_set *req;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);

 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_SET_INTERRUPT_ENABLE, sizeof(*req),
          wrb, ((void*)0));

 req->intr_enabled = intr_enable;

 status = be_mbox_notify_wait(adapter);

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
