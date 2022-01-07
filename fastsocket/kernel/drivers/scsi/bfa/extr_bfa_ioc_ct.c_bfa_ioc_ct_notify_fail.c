
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int err_set; int alt_ll_halt; int ll_halt; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;


 unsigned int __FW_INIT_HALT_P ;
 scalar_t__ bfa_ioc_is_cna (struct bfa_ioc_s*) ;
 int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_notify_fail(struct bfa_ioc_s *ioc)
{
 if (bfa_ioc_is_cna(ioc)) {
  writel(__FW_INIT_HALT_P, ioc->ioc_regs.ll_halt);
  writel(__FW_INIT_HALT_P, ioc->ioc_regs.alt_ll_halt);

  readl(ioc->ioc_regs.ll_halt);
  readl(ioc->ioc_regs.alt_ll_halt);
 } else {
  writel(~0U, ioc->ioc_regs.err_set);
  readl(ioc->ioc_regs.err_set);
 }
}
