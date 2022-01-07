
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_rspq {int dummy; } ;
typedef enum rspq_event { ____Placeholder_rspq_event } rspq_event ;





 int bfa_fsm_set_state (struct bfa_msgq_rspq*,int ) ;
 int bfa_sm_fault (int) ;
 int rspq_sm_ready ;
 int rspq_sm_stopped ;

__attribute__((used)) static void
rspq_sm_init_wait(struct bfa_msgq_rspq *rspq, enum rspq_event event)
{
 switch (event) {
 case 130:
 case 128:
  bfa_fsm_set_state(rspq, rspq_sm_stopped);
  break;

 case 129:
  bfa_fsm_set_state(rspq, rspq_sm_ready);
  break;

 default:
  bfa_sm_fault(event);
 }
}
