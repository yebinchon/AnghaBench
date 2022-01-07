
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int alt_ioc_fwstate; int ioc_fwstate; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef enum bfi_fwboot_type { ____Placeholder_bfi_fwboot_type } bfi_fwboot_type ;


 scalar_t__ BFA_STATUS_OK ;
 int BFI_FWBOOT_TYPE_MEMTEST ;
 int BFI_IOC_INITING ;
 int BFI_IOC_MEMTEST ;
 int bfa_ioc_download_fw (struct bfa_ioc*,int,int ) ;
 int bfa_ioc_lpu_start (struct bfa_ioc*) ;
 int bfa_ioc_msgflush (struct bfa_ioc*) ;
 scalar_t__ bfa_ioc_pll_init (struct bfa_ioc*) ;
 int bfa_ioc_stats (struct bfa_ioc*,int ) ;
 int ioc_boots ;
 int writel (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_boot(struct bfa_ioc *ioc, enum bfi_fwboot_type boot_type,
  u32 boot_env)
{
 bfa_ioc_stats(ioc, ioc_boots);

 if (bfa_ioc_pll_init(ioc) != BFA_STATUS_OK)
  return;




 if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
  writel(BFI_IOC_MEMTEST, ioc->ioc_regs.ioc_fwstate);
  writel(BFI_IOC_MEMTEST, ioc->ioc_regs.alt_ioc_fwstate);
 } else {
  writel(BFI_IOC_INITING, ioc->ioc_regs.ioc_fwstate);
  writel(BFI_IOC_INITING, ioc->ioc_regs.alt_ioc_fwstate);
 }

 bfa_ioc_msgflush(ioc);
 bfa_ioc_download_fw(ioc, boot_type, boot_env);
 bfa_ioc_lpu_start(ioc);
}
