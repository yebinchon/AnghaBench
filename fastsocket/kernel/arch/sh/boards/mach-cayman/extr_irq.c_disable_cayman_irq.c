
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EPLD_MASK_BASE ;
 scalar_t__ START_EXT_IRQS ;
 unsigned long ctrl_inl (unsigned int) ;
 int ctrl_outl (unsigned long,unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void disable_cayman_irq(unsigned int irq)
{
 unsigned long flags;
 unsigned long mask;
 unsigned int reg;
 unsigned char bit;

 irq -= START_EXT_IRQS;
 reg = EPLD_MASK_BASE + ((irq / 8) << 2);
 bit = 1<<(irq % 8);
 local_irq_save(flags);
 mask = ctrl_inl(reg);
 mask &= ~bit;
 ctrl_outl(mask, reg);
 local_irq_restore(flags);
}
