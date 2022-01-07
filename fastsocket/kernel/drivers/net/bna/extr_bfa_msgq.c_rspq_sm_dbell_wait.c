
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_rspq {int flags; } ;
typedef enum rspq_event { ____Placeholder_rspq_event } rspq_event ;


 int BFA_MSGQ_RSPQ_F_DB_UPDATE ;




 int bfa_fsm_set_state (struct bfa_msgq_rspq*,void (*) (struct bfa_msgq_rspq*,int)) ;
 int bfa_sm_fault (int) ;
 void rspq_sm_ready (struct bfa_msgq_rspq*,int) ;
 void rspq_sm_stopped (struct bfa_msgq_rspq*,int) ;

__attribute__((used)) static void
rspq_sm_dbell_wait(struct bfa_msgq_rspq *rspq, enum rspq_event event)
{
 switch (event) {
 case 128:
 case 130:
  bfa_fsm_set_state(rspq, rspq_sm_stopped);
  break;

 case 129:
  rspq->flags |= BFA_MSGQ_RSPQ_F_DB_UPDATE;
  break;

 case 131:
  if (rspq->flags & BFA_MSGQ_RSPQ_F_DB_UPDATE) {
   rspq->flags &= ~BFA_MSGQ_RSPQ_F_DB_UPDATE;
   bfa_fsm_set_state(rspq, rspq_sm_dbell_wait);
  } else
   bfa_fsm_set_state(rspq, rspq_sm_ready);
  break;

 default:
  bfa_sm_fault(event);
 }
}
