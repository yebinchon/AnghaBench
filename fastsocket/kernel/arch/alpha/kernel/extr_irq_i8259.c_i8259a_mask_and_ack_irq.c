
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __i8259a_disable_irq (unsigned int) ;
 int i8259_irq_lock ;
 int outb (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
i8259a_mask_and_ack_irq(unsigned int irq)
{
 spin_lock(&i8259_irq_lock);
 __i8259a_disable_irq(irq);


 if (irq >= 8) {
  outb(0xE0 | (irq - 8), 0xa0);
  irq = 2;
 }
 outb(0xE0 | irq, 0x20);
 spin_unlock(&i8259_irq_lock);
}
