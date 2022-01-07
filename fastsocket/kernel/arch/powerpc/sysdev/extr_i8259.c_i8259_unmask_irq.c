
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_21 ;
 int cached_A1 ;
 int i8259_lock ;
 int i8259_set_irq_mask (unsigned int) ;
 int pr_debug (char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i8259_unmask_irq(unsigned int irq_nr)
{
 unsigned long flags;

 pr_debug("i8259_unmask_irq(%d)\n", irq_nr);

 spin_lock_irqsave(&i8259_lock, flags);
 if (irq_nr < 8)
  cached_21 &= ~(1 << irq_nr);
 else
  cached_A1 &= ~(1 << (irq_nr-8));
 i8259_set_irq_mask(irq_nr);
 spin_unlock_irqrestore(&i8259_lock, flags);
}
