
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int IRQ_BIT (unsigned int) ;
 int IRQ_ENT_REG0_OFFSET ;
 int IRQ_ENT_REG1_OFFSET ;
 unsigned int davinci_irq_readl (int ) ;
 int davinci_irq_writel (unsigned int,int ) ;

__attribute__((used)) static void davinci_mask_irq(unsigned int irq)
{
 unsigned int mask;
 u32 l;

 mask = 1 << IRQ_BIT(irq);

 if (irq > 31) {
  l = davinci_irq_readl(IRQ_ENT_REG1_OFFSET);
  l &= ~mask;
  davinci_irq_writel(l, IRQ_ENT_REG1_OFFSET);
 } else {
  l = davinci_irq_readl(IRQ_ENT_REG0_OFFSET);
  l &= ~mask;
  davinci_irq_writel(l, IRQ_ENT_REG0_OFFSET);
 }
}
