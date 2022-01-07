
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioc_fwstate; } ;
struct bfa_ioc {int iocpf; TYPE_1__ ioc_regs; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;


 int BFI_FWBOOT_ENV_OS ;
 int BFI_FWBOOT_TYPE_NORMAL ;
 int BFI_IOC_DISABLED ;
 int BFI_IOC_INITING ;
 int BFI_IOC_OP ;
 int BFI_IOC_UNINIT ;
 int IOCPF_E_FWREADY ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_ioc_boot (struct bfa_ioc*,int ,int ) ;
 int bfa_ioc_fwver_valid (struct bfa_ioc*,int ) ;
 int bfa_ioc_msgflush (struct bfa_ioc*) ;
 int bfa_ioc_poll_fwinit (struct bfa_ioc*) ;
 int readl (int ) ;

__attribute__((used)) static void
bfa_ioc_hwinit(struct bfa_ioc *ioc, bool force)
{
 enum bfi_ioc_state ioc_fwstate;
 bool fwvalid;
 u32 boot_env;

 ioc_fwstate = readl(ioc->ioc_regs.ioc_fwstate);

 if (force)
  ioc_fwstate = BFI_IOC_UNINIT;

 boot_env = BFI_FWBOOT_ENV_OS;




 fwvalid = (ioc_fwstate == BFI_IOC_UNINIT) ?
  0 : bfa_ioc_fwver_valid(ioc, boot_env);

 if (!fwvalid) {
  bfa_ioc_boot(ioc, BFI_FWBOOT_TYPE_NORMAL, boot_env);
  bfa_ioc_poll_fwinit(ioc);
  return;
 }





 if (ioc_fwstate == BFI_IOC_INITING) {
  bfa_ioc_poll_fwinit(ioc);
  return;
 }





 if (ioc_fwstate == BFI_IOC_DISABLED || ioc_fwstate == BFI_IOC_OP) {




  bfa_ioc_msgflush(ioc);
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_FWREADY);
  return;
 }




 bfa_ioc_boot(ioc, BFI_FWBOOT_TYPE_NORMAL, boot_env);
 bfa_ioc_poll_fwinit(ioc);
}
