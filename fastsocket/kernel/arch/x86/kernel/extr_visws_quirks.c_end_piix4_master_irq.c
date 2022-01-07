
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cobalt_lock ;
 int enable_cobalt_irq (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void end_piix4_master_irq(unsigned int irq)
{
 unsigned long flags;

 spin_lock_irqsave(&cobalt_lock, flags);
 enable_cobalt_irq(irq);
 spin_unlock_irqrestore(&cobalt_lock, flags);
}
