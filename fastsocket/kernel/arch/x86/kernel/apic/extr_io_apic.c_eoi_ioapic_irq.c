
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {unsigned int irq; struct irq_cfg* chip_data; } ;
struct irq_cfg {int dummy; } ;


 int __eoi_ioapic_irq (unsigned int,struct irq_cfg*) ;
 int ioapic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void eoi_ioapic_irq(struct irq_desc *desc)
{
 struct irq_cfg *cfg;
 unsigned long flags;
 unsigned int irq;

 irq = desc->irq;
 cfg = desc->chip_data;

 spin_lock_irqsave(&ioapic_lock, flags);
 __eoi_ioapic_irq(irq, cfg);
 spin_unlock_irqrestore(&ioapic_lock, flags);
}
