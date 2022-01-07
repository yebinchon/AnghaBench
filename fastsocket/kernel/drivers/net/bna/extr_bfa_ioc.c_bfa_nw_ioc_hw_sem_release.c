
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_sem_reg; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 int writel (int,int ) ;

void
bfa_nw_ioc_hw_sem_release(struct bfa_ioc *ioc)
{
 writel(1, ioc->ioc_regs.ioc_sem_reg);
}
