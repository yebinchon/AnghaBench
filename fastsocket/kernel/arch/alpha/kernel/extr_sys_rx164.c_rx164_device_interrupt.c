
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ POLARIS_DENSE_CONFIG_BASE ;
 long ffz (unsigned long) ;
 int handle_irq (int) ;
 int isa_no_iack_sc_device_interrupt (unsigned long) ;

__attribute__((used)) static void
rx164_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 volatile unsigned int *dirr;
 long i;



 dirr = (void *)(POLARIS_DENSE_CONFIG_BASE + 0x84);
 pld = *dirr;





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i == 20) {
   isa_no_iack_sc_device_interrupt(vector);
  } else {
   handle_irq(16+i);
  }
 }
}
