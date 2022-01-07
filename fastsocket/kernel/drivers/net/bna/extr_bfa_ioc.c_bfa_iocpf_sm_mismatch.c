
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int iocpf_timer; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;





 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_pf_disabled (struct bfa_ioc*) ;
 int bfa_iocpf_sm_fwcheck ;
 int bfa_iocpf_sm_reset ;
 int bfa_sm_fault (int) ;
 int del_timer (int *) ;

__attribute__((used)) static void
bfa_iocpf_sm_mismatch(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 128:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fwcheck);
  break;

 case 130:
  del_timer(&ioc->iocpf_timer);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  bfa_ioc_pf_disabled(ioc);
  break;

 case 129:
  del_timer(&ioc->iocpf_timer);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  break;

 default:
  bfa_sm_fault(event);
 }
}
