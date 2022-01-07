
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iocpf {struct bfa_ioc* ioc; } ;
struct TYPE_2__ {int ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; int iocpf_timer; } ;
typedef enum iocpf_event { ____Placeholder_iocpf_event } iocpf_event ;


 int BFI_IOC_FAIL ;




 int bfa_fsm_set_state (struct bfa_iocpf*,int ) ;
 int bfa_iocpf_sm_disabling_sync ;
 int bfa_sm_fault (int) ;
 int del_timer (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
bfa_iocpf_sm_disabling(struct bfa_iocpf *iocpf, enum iocpf_event event)
{
 struct bfa_ioc *ioc = iocpf->ioc;

 switch (event) {
 case 130:
  del_timer(&ioc->iocpf_timer);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 case 131:
  del_timer(&ioc->iocpf_timer);




 case 128:
  writel(BFI_IOC_FAIL, ioc->ioc_regs.ioc_fwstate);
  bfa_fsm_set_state(iocpf, bfa_iocpf_sm_disabling_sync);
  break;

 case 129:
  break;

 default:
  bfa_sm_fault(event);
 }
}
