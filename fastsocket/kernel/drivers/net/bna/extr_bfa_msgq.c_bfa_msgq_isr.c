
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg {TYPE_1__ mh; } ;
struct bfa_msgq {int cmdq; int rspq; } ;






 int BUG_ON (int) ;
 int bfa_msgq_cmdq_ci_update (int *,struct bfi_mbmsg*) ;
 int bfa_msgq_cmdq_copy_req (int *,struct bfi_mbmsg*) ;
 int bfa_msgq_init_rsp (struct bfa_msgq*,struct bfi_mbmsg*) ;
 int bfa_msgq_rspq_pi_update (int *,struct bfi_mbmsg*) ;

__attribute__((used)) static void
bfa_msgq_isr(void *cbarg, struct bfi_mbmsg *msg)
{
 struct bfa_msgq *msgq = (struct bfa_msgq *)cbarg;

 switch (msg->mh.msg_id) {
 case 128:
  bfa_msgq_init_rsp(msgq, msg);
  break;

 case 129:
  bfa_msgq_rspq_pi_update(&msgq->rspq, msg);
  break;

 case 130:
  bfa_msgq_cmdq_ci_update(&msgq->cmdq, msg);
  break;

 case 131:
  bfa_msgq_cmdq_copy_req(&msgq->cmdq, msg);
  break;

 default:
  BUG_ON(1);
 }
}
