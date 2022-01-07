
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 int ETHERNET_IRQ ;
 int MMACINTREG ;
 int icu1_clear (int ,int ) ;
 struct irq_desc* irq_desc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_disable_macint(uint16_t mask)
{
 struct irq_desc *desc = irq_desc + ETHERNET_IRQ;
 unsigned long flags;

 spin_lock_irqsave(&desc->lock, flags);
 icu1_clear(MMACINTREG, mask);
 spin_unlock_irqrestore(&desc->lock, flags);
}
