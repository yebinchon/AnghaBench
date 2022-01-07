
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_21 ;
 int cached_A1 ;
 int i8259_lock ;
 int inb (int) ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i8259_mask_and_ack_irq(unsigned int irq_nr)
{
 unsigned long flags;

 spin_lock_irqsave(&i8259_lock, flags);
 if (irq_nr > 7) {
  cached_A1 |= 1 << (irq_nr-8);
  inb(0xA1);
  outb(cached_A1, 0xA1);
  outb(0x20, 0xA0);
  outb(0x20, 0x20);
 } else {
  cached_21 |= 1 << irq_nr;
  inb(0x21);
  outb(cached_21, 0x21);
  outb(0x20, 0x20);
 }
 spin_unlock_irqrestore(&i8259_lock, flags);
}
