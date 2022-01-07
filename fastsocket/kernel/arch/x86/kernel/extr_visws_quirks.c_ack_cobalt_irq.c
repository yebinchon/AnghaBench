
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EIO_ACK ;
 int APIC_EOI ;
 int apic_write (int ,int ) ;
 int cobalt_lock ;
 int disable_cobalt_irq (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ack_cobalt_irq(unsigned int irq)
{
 unsigned long flags;

 spin_lock_irqsave(&cobalt_lock, flags);
 disable_cobalt_irq(irq);
 apic_write(APIC_EOI, APIC_EIO_ACK);
 spin_unlock_irqrestore(&cobalt_lock, flags);
}
