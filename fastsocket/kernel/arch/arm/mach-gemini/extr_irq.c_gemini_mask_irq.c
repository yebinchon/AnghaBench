
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEMINI_INTERRUPT_BASE ;
 int IO_ADDRESS (int ) ;
 int IRQ_MASK (int ) ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void gemini_mask_irq(unsigned int irq)
{
 unsigned int mask;

 mask = __raw_readl(IRQ_MASK(IO_ADDRESS(GEMINI_INTERRUPT_BASE)));
 mask &= ~(1 << irq);
 __raw_writel(mask, IRQ_MASK(IO_ADDRESS(GEMINI_INTERRUPT_BASE)));
}
