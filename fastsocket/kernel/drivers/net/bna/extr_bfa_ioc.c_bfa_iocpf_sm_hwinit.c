
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int iocpf_timer; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;





 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_pf_failed (struct bfa_ioc*) ;
 int bfa_ioc_sync_leave (struct bfa_ioc*) ;
 int bfa_iocpf_sm_disabled ;
 int bfa_iocpf_sm_enabling ;
 int bfa_iocpf_sm_initfail_sync ;
 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;
 int del_timer (int *) ;

__attribute__((used)) static void
bfa_iocpf_sm_hwinit(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_enabling);
  break;

 case 128:
  bfa_nw_ioc_hw_sem_release(ioc);
   bfa_ioc_pf_failed(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_initfail_sync);
  break;

 case 130:
  del_timer(&ioc->iocpf_timer);
  bfa_ioc_sync_leave(ioc);
  bfa_nw_ioc_hw_sem_release(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabled);
  break;

 default:
  bfa_sm_fault(event);
 }
}
