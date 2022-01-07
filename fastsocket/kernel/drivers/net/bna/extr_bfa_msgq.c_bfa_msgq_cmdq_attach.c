
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {struct bfa_msgq* msgq; int pending_q; int depth; } ;
struct bfa_msgq {int dummy; } ;


 int BFA_MSGQ_CMDQ_NUM_ENTRY ;
 int INIT_LIST_HEAD (int *) ;
 int bfa_fsm_set_state (struct bfa_msgq_cmdq*,int ) ;
 int cmdq_sm_stopped ;

__attribute__((used)) static void
bfa_msgq_cmdq_attach(struct bfa_msgq_cmdq *cmdq, struct bfa_msgq *msgq)
{
 cmdq->depth = BFA_MSGQ_CMDQ_NUM_ENTRY;
 INIT_LIST_HEAD(&cmdq->pending_q);
 cmdq->msgq = msgq;
 bfa_fsm_set_state(cmdq, cmdq_sm_stopped);
}
