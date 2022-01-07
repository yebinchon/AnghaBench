
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_BIT (unsigned int) ;
 int IRQ_REG0_OFFSET ;
 int IRQ_REG1_OFFSET ;
 int davinci_irq_writel (unsigned int,int ) ;

__attribute__((used)) static void davinci_ack_irq(unsigned int irq)
{
 unsigned int mask;

 mask = 1 << IRQ_BIT(irq);

 if (irq > 31)
  davinci_irq_writel(mask, IRQ_REG1_OFFSET);
 else
  davinci_irq_writel(mask, IRQ_REG0_OFFSET);
}
