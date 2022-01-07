
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int alt_ioc_fwstate; int ioc_fwstate; int ioc_usage_reg; int ioc_fail_sync; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int BFI_IOC_UNINIT ;
 int bfa_ioc_ct_get_sync_reqd (int) ;
 int bfa_ioc_ct_sync_complete (struct bfa_ioc*) ;
 int bfa_ioc_ct_sync_pos (struct bfa_ioc*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bool
bfa_ioc_ct_sync_start(struct bfa_ioc *ioc)
{
 u32 r32 = readl(ioc->ioc_regs.ioc_fail_sync);
 u32 sync_reqd = bfa_ioc_ct_get_sync_reqd(r32);
 if (sync_reqd & bfa_ioc_ct_sync_pos(ioc)) {
  writel(0, ioc->ioc_regs.ioc_fail_sync);
  writel(1, ioc->ioc_regs.ioc_usage_reg);
  writel(BFI_IOC_UNINIT, ioc->ioc_regs.ioc_fwstate);
  writel(BFI_IOC_UNINIT, ioc->ioc_regs.alt_ioc_fwstate);
  return 1;
 }

 return bfa_ioc_ct_sync_complete(ioc);
}
