
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INTC_INTDSB_0 ;
 unsigned long INTC_INTDSB_1 ;
 int ctrl_outl (unsigned long,unsigned long) ;

__attribute__((used)) static void disable_intc_irq(unsigned int irq)
{
 unsigned long reg;
 unsigned long bitmask;

 if (irq < 32) {
  reg = INTC_INTDSB_0;
  bitmask = 1 << irq;
 } else {
  reg = INTC_INTDSB_1;
  bitmask = 1 << (irq - 32);
 }

 ctrl_outl(bitmask, reg);
}
