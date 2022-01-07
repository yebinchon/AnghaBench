
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct be_queue_info {int created; int id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_q_destroy {int id; int hdr; } ;
struct be_adapter {int mbox_lock; } ;


 int BUG () ;
 int CMD_SUBSYSTEM_COMMON ;
 int CMD_SUBSYSTEM_ETH ;
 int OPCODE_COMMON_CQ_DESTROY ;
 int OPCODE_COMMON_EQ_DESTROY ;
 int OPCODE_COMMON_MCC_DESTROY ;
 int OPCODE_ETH_RX_DESTROY ;
 int OPCODE_ETH_TX_DESTROY ;





 int be_mbox_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 int cpu_to_le16 (int ) ;
 struct be_cmd_req_q_destroy* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (struct be_adapter*) ;

int be_cmd_q_destroy(struct be_adapter *adapter, struct be_queue_info *q,
  int queue_type)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_q_destroy *req;
 u8 subsys = 0, opcode = 0;
 int status;

 if (mutex_lock_interruptible(&adapter->mbox_lock))
  return -1;

 wrb = wrb_from_mbox(adapter);
 req = embedded_payload(wrb);

 switch (queue_type) {
 case 131:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_EQ_DESTROY;
  break;
 case 132:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_CQ_DESTROY;
  break;
 case 128:
  subsys = CMD_SUBSYSTEM_ETH;
  opcode = OPCODE_ETH_TX_DESTROY;
  break;
 case 129:
  subsys = CMD_SUBSYSTEM_ETH;
  opcode = OPCODE_ETH_RX_DESTROY;
  break;
 case 130:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_MCC_DESTROY;
  break;
 default:
  BUG();
 }

 be_wrb_cmd_hdr_prepare(&req->hdr, subsys, opcode, sizeof(*req), wrb,
    ((void*)0));
 req->id = cpu_to_le16(q->id);

 status = be_mbox_notify_wait(adapter);
 q->created = 0;

 mutex_unlock(&adapter->mbox_lock);
 return status;
}
