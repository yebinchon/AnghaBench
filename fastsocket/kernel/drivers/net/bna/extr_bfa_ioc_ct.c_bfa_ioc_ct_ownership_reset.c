
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_sem_reg; int ioc_usage_sem_reg; int ioc_usage_reg; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int bfa_nw_ioc_hw_sem_release (struct bfa_ioc*) ;
 int bfa_nw_ioc_sem_get (int ) ;
 int bfa_nw_ioc_sem_release (int ) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_ownership_reset(struct bfa_ioc *ioc)
{
 bfa_nw_ioc_sem_get(ioc->ioc_regs.ioc_usage_sem_reg);
 writel(0, ioc->ioc_regs.ioc_usage_reg);
 bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_usage_sem_reg);






 readl(ioc->ioc_regs.ioc_sem_reg);
 bfa_nw_ioc_hw_sem_release(ioc);
}
