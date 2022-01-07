
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* cached_irq_mask ;
 int outb (unsigned int,int) ;

__attribute__((used)) static void shark_enable_8259A_irq(unsigned int irq)
{
 unsigned int mask;
 if (irq<8) {
   mask = ~(1 << irq);
   cached_irq_mask[0] &= mask;
   outb(cached_irq_mask[0],0x21);
 } else {
   mask = ~(1 << (irq-8));
   cached_irq_mask[1] &= mask;
   outb(cached_irq_mask[1],0xA1);
 }
}
