
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int flags; } ;
typedef enum cmdq_event { ____Placeholder_cmdq_event } cmdq_event ;


 int BFA_MSGQ_CMDQ_F_DB_UPDATE ;




 int bfa_fsm_set_state (struct bfa_msgq_cmdq*,int ) ;
 int bfa_sm_fault (int) ;
 int cmdq_sm_init_wait ;

__attribute__((used)) static void
cmdq_sm_stopped(struct bfa_msgq_cmdq *cmdq, enum cmdq_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(cmdq, cmdq_sm_init_wait);
  break;

 case 128:
 case 131:

  break;

 case 130:
  cmdq->flags |= BFA_MSGQ_CMDQ_F_DB_UPDATE;
  break;

 default:
  bfa_sm_fault(event);
 }
}
