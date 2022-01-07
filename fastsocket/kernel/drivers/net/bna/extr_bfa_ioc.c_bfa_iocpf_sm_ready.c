
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int dummy; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;





 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_iocpf_sm_disabling ;
 int bfa_iocpf_sm_fail_sync ;
 int bfa_iocpf_sm_initfail_sync ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_iocpf_sm_ready(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 switch (event) {
 case 130:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling);
  break;

 case 128:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_initfail_sync);
  break;

 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail_sync);
  break;

 default:
  bfa_sm_fault(event);
 }
}
