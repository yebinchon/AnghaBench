
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_ioc_s {int iocpf; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;
typedef scalar_t__ bfa_boolean_t ;


 scalar_t__ BFA_FALSE ;
 int BFI_FWBOOT_ENV_OS ;
 int BFI_FWBOOT_TYPE_NORMAL ;
 int BFI_IOC_DISABLED ;
 int BFI_IOC_INITING ;
 int BFI_IOC_OP ;
 int BFI_IOC_UNINIT ;
 int IOCPF_E_FWREADY ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_ioc_boot (struct bfa_ioc_s*,int ,int ) ;
 scalar_t__ bfa_ioc_fwver_valid (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_cur_ioc_fwstate (struct bfa_ioc_s*) ;
 int bfa_ioc_msgflush (struct bfa_ioc_s*) ;
 int bfa_ioc_poll_fwinit (struct bfa_ioc_s*) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;

__attribute__((used)) static void
bfa_ioc_hwinit(struct bfa_ioc_s *ioc, bfa_boolean_t force)
{
 enum bfi_ioc_state ioc_fwstate;
 bfa_boolean_t fwvalid;
 u32 boot_type;
 u32 boot_env;

 ioc_fwstate = bfa_ioc_get_cur_ioc_fwstate(ioc);

 if (force)
  ioc_fwstate = BFI_IOC_UNINIT;

 bfa_trc(ioc, ioc_fwstate);

 boot_type = BFI_FWBOOT_TYPE_NORMAL;
 boot_env = BFI_FWBOOT_ENV_OS;




 fwvalid = (ioc_fwstate == BFI_IOC_UNINIT) ?
  BFA_FALSE : bfa_ioc_fwver_valid(ioc, boot_env);

 if (!fwvalid) {
  bfa_ioc_boot(ioc, boot_type, boot_env);
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




 bfa_ioc_boot(ioc, boot_type, boot_env);
 bfa_ioc_poll_fwinit(ioc);
}
