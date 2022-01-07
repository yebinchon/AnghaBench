
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_ioc_s {int dummy; } ;


 scalar_t__ BFA_STATUS_OK ;
 int BFI_FWBOOT_TYPE_MEMTEST ;
 int BFI_IOC_INITING ;
 int BFI_IOC_MEMTEST ;
 int bfa_ioc_download_fw (struct bfa_ioc_s*,int ,int ) ;
 int bfa_ioc_lpu_start (struct bfa_ioc_s*) ;
 int bfa_ioc_msgflush (struct bfa_ioc_s*) ;
 scalar_t__ bfa_ioc_pll_init (struct bfa_ioc_s*) ;
 int bfa_ioc_set_alt_ioc_fwstate (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc_s*,int ) ;
 int ioc_boots ;

void
bfa_ioc_boot(struct bfa_ioc_s *ioc, u32 boot_type, u32 boot_env)
{
 bfa_ioc_stats(ioc, ioc_boots);

 if (bfa_ioc_pll_init(ioc) != BFA_STATUS_OK)
  return;




 if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_MEMTEST);
  bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_MEMTEST);
 } else {
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_INITING);
  bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_INITING);
 }

 bfa_ioc_msgflush(ioc);
 bfa_ioc_download_fw(ioc, boot_type, boot_env);
 bfa_ioc_lpu_start(ioc);
}
