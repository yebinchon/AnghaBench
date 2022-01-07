
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* beatic_irq_mask_ack ;
 int beatic_irq_mask_lock ;
 int beatic_update_irq_mask (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void beatic_ack_irq(unsigned int irq_plug)
{
 unsigned long flags;

 spin_lock_irqsave(&beatic_irq_mask_lock, flags);
 beatic_irq_mask_ack[irq_plug/64] &= ~(1UL << (63 - (irq_plug%64)));
 beatic_update_irq_mask(irq_plug);
 spin_unlock_irqrestore(&beatic_irq_mask_lock, flags);
}
