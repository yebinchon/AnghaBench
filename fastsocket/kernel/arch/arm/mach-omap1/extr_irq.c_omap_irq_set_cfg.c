
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_BANK (int) ;
 int IRQ_BIT (int) ;
 int IRQ_ILR0_REG_OFFSET ;
 int irq_bank_writel (unsigned long,int,unsigned long) ;

__attribute__((used)) static void omap_irq_set_cfg(int irq, int fiq, int priority, int trigger)
{
 signed int bank;
 unsigned long val, offset;

 bank = IRQ_BANK(irq);

 fiq = bank ? 0 : (fiq & 0x1);
 val = fiq | ((priority & 0x1f) << 2) | ((trigger & 0x1) << 1);
 offset = IRQ_ILR0_REG_OFFSET + IRQ_BIT(irq) * 0x4;
 irq_bank_writel(val, bank, offset);
}
