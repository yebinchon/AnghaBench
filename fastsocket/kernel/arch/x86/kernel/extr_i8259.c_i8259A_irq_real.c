
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASTER_CMD ;
 int PIC_SLAVE_CMD ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline int i8259A_irq_real(unsigned int irq)
{
 int value;
 int irqmask = 1<<irq;

 if (irq < 8) {
  outb(0x0B, PIC_MASTER_CMD);
  value = inb(PIC_MASTER_CMD) & irqmask;
  outb(0x0A, PIC_MASTER_CMD);
  return value;
 }
 outb(0x0B, PIC_SLAVE_CMD);
 value = inb(PIC_SLAVE_CMD) & (irqmask >> 8);
 outb(0x0A, PIC_SLAVE_CMD);
 return value;
}
