
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffz (unsigned long) ;
 int handle_irq (unsigned int) ;
 unsigned long inb (int) ;
 scalar_t__ inw (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
noritake_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 unsigned int i;


 pld = (((unsigned long) inw(0x54c) << 32)
        | ((unsigned long) inw(0x54a) << 16)
        | ((unsigned long) inb(0xa0) << 8)
        | inb(0x20));





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i < 16) {
   isa_device_interrupt(vector);
  } else {
   handle_irq(i);
  }
 }
}
