
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_21 ;
 int cached_A1 ;
 int outb (int ,int) ;

__attribute__((used)) static void i8259_set_irq_mask(int irq_nr)
{
 outb(cached_A1,0xA1);
 outb(cached_21,0x21);
}
