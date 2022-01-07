
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_rspq {struct bfa_msgq* msgq; int depth; } ;
struct bfa_msgq {int dummy; } ;


 int BFA_MSGQ_RSPQ_NUM_ENTRY ;
 int bfa_fsm_set_state (struct bfa_msgq_rspq*,int ) ;
 int rspq_sm_stopped ;

__attribute__((used)) static void
bfa_msgq_rspq_attach(struct bfa_msgq_rspq *rspq, struct bfa_msgq *msgq)
{
 rspq->depth = BFA_MSGQ_RSPQ_NUM_ENTRY;
 rspq->msgq = msgq;
 bfa_fsm_set_state(rspq, rspq_sm_stopped);
}
