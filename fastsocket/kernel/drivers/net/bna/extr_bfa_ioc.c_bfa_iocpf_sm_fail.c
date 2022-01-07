
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int dummy; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;



 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_iocpf_sm_disabled ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_iocpf_sm_fail(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabled);
  break;

 default:
  bfa_sm_fault(event);
 }
}
