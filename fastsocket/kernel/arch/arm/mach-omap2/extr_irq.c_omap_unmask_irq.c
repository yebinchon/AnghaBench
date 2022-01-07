
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INTC_MIR_CLEAR0 ;
 int IRQ_BITS_PER_REG ;
 int intc_bank_write_reg (int,int *,scalar_t__) ;
 int * irq_banks ;

__attribute__((used)) static void omap_unmask_irq(unsigned int irq)
{
 int offset = irq & (~(IRQ_BITS_PER_REG - 1));

 irq &= (IRQ_BITS_PER_REG - 1);

 intc_bank_write_reg(1 << irq, &irq_banks[0], INTC_MIR_CLEAR0 + offset);
}
