
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ppc4xx_edac_check (struct mem_ctl_info*) ;

__attribute__((used)) static irqreturn_t
ppc4xx_edac_isr(int irq, void *dev_id)
{
 struct mem_ctl_info *mci = dev_id;

 ppc4xx_edac_check(mci);

 return IRQ_HANDLED;
}
