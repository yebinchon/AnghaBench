
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASK_LO ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void isa_unmask_pic_lo_irq(unsigned int irq)
{
 unsigned int mask = 1 << (irq & 7);

 outb(inb(PIC_MASK_LO) & ~mask, PIC_MASK_LO);
}
