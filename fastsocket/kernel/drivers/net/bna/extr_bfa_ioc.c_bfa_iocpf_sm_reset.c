
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {int dummy; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;




 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_iocpf_sm_fwcheck ;
 int bfa_sm_fault (int) ;

__attribute__((used)) static void
bfa_iocpf_sm_reset(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fwcheck);
  break;

 case 128:
  break;

 default:
  bfa_sm_fault(event);
 }
}
