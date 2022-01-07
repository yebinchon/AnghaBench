
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfi_ioc_image_hdr_s {int dummy; } ;
struct TYPE_2__ {int ioc_usage_sem_reg; int ioc_usage_reg; int ioc_fwstate; int ioc_fail_sync; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int BFI_IOC_UNINIT ;
 int WARN_ON (int) ;
 int bfa_ioc_fwver_cmp (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ;
 int bfa_ioc_fwver_get (struct bfa_ioc_s*,struct bfi_ioc_image_hdr_s*) ;
 int bfa_ioc_sem_get (int ) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_ct_firmware_lock(struct bfa_ioc_s *ioc)
{
 enum bfi_ioc_state ioc_fwstate;
 u32 usecnt;
 struct bfi_ioc_image_hdr_s fwhdr;

 bfa_ioc_sem_get(ioc->ioc_regs.ioc_usage_sem_reg);
 usecnt = readl(ioc->ioc_regs.ioc_usage_reg);




 if (usecnt == 0) {
  writel(1, ioc->ioc_regs.ioc_usage_reg);
  readl(ioc->ioc_regs.ioc_usage_sem_reg);
  writel(1, ioc->ioc_regs.ioc_usage_sem_reg);
  writel(0, ioc->ioc_regs.ioc_fail_sync);
  bfa_trc(ioc, usecnt);
  return BFA_TRUE;
 }

 ioc_fwstate = readl(ioc->ioc_regs.ioc_fwstate);
 bfa_trc(ioc, ioc_fwstate);




 WARN_ON(ioc_fwstate == BFI_IOC_UNINIT);




 bfa_ioc_fwver_get(ioc, &fwhdr);
 if (!bfa_ioc_fwver_cmp(ioc, &fwhdr)) {
  readl(ioc->ioc_regs.ioc_usage_sem_reg);
  writel(1, ioc->ioc_regs.ioc_usage_sem_reg);
  bfa_trc(ioc, usecnt);
  return BFA_FALSE;
 }




 usecnt++;
 writel(usecnt, ioc->ioc_regs.ioc_usage_reg);
 readl(ioc->ioc_regs.ioc_usage_sem_reg);
 writel(1, ioc->ioc_regs.ioc_usage_sem_reg);
 bfa_trc(ioc, usecnt);
 return BFA_TRUE;
}
