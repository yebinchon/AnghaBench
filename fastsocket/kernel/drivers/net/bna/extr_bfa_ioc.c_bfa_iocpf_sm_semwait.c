
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct bfa_ioc {int sem_timer; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFA_IOC_HWSEM_TOV ;



 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_ioc_hw_sem_get_cancel (struct bfa_ioc*) ;
 int bfa_ioc_pf_hwfailed (struct bfa_ioc*) ;
 int bfa_ioc_sync_complete (struct bfa_ioc*) ;
 int bfa_ioc_sync_join (struct bfa_ioc*) ;
 int bfa_iocpf_sm_disabling_sync ;
 int bfa_iocpf_sm_fail ;
 int bfa_iocpf_sm_hwinit ;
 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_sm_fault (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_semwait(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 129:
  if (bfa_ioc_sync_complete(ioc)) {
   bfa_ioc_sync_join(ioc);
   bfa_fsm_set_state(iocpf, bfa_iocpf_sm_hwinit);
  } else {
   bfa_nw_ioc_hw_sem_release(ioc);
   mod_timer(&ioc->sem_timer, jiffies +
    msecs_to_jiffies(BFA_IOC_HWSEM_TOV));
  }
  break;

 case 128:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  bfa_ioc_pf_hwfailed(ioc);
  break;

 case 130:
  bfa_ioc_hw_sem_get_cancel(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 default:
  bfa_sm_fault(event);
 }
}
