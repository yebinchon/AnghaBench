
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alt_ll_halt; int ll_halt; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int __FW_INIT_HALT_P ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_notify_fail(struct bfa_ioc *ioc)
{
 writel(__FW_INIT_HALT_P, ioc->ioc_regs.ll_halt);
 writel(__FW_INIT_HALT_P, ioc->ioc_regs.alt_ll_halt);

 readl(ioc->ioc_regs.ll_halt);
 readl(ioc->ioc_regs.alt_ll_halt);
}
