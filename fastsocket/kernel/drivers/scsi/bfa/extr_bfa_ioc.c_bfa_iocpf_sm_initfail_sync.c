
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocpf_s {struct bfa_ioc_s* ioc; } ;
struct TYPE_2__ {int ioc_sem_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFI_IOC_FAIL ;





 int IOC_E_HWFAILED ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;
 int bfa_fsm_set_state (struct bfa_iocpf_s*,int ) ;
 int bfa_ioc_firmware_unlock (struct bfa_ioc_s*) ;
 int bfa_ioc_notify_fail (struct bfa_ioc_s*) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_sync_leave (struct bfa_ioc_s*) ;
 int bfa_iocpf_sm_disabling_sync ;
 int bfa_iocpf_sm_fail ;
 int bfa_iocpf_sm_initfail ;
 int bfa_iocpf_sm_reset ;
 int bfa_sem_timer_stop (struct bfa_ioc_s*) ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_initfail_sync(struct bfa_iocpf_s *iocpf, enum iocpf_event event)
{
 struct bfa_ioc_s *ioc = iocpf->ioc;

 bfa_trc(ioc, event);

 switch (event) {
 case 130:
  bfa_ioc_notify_fail(ioc);
  bfa_ioc_sync_leave(ioc);
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_FAIL);
  writel(1, ioc->ioc_regs.ioc_sem_reg);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_initfail);
  break;

 case 129:
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_fail);
  bfa_fsm_send_event(ioc, IOC_E_HWFAILED);
  break;

 case 132:
  bfa_sem_timer_stop(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 case 128:
  bfa_sem_timer_stop(ioc);
  bfa_ioc_firmware_unlock(ioc);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_reset);
  break;

 case 131:
  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
