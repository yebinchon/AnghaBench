
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_ENABLE_REG ;
 int master_outb (int,int ) ;
 scalar_t__ mext_disabled ;
 int printk (char*) ;

void q40_enable_irq(unsigned int irq)
{
 if (irq >= 5 && irq <= 15) {
  mext_disabled--;
  if (mext_disabled > 0)
   printk("q40_enable_irq : nested disable/enable\n");
  if (mext_disabled == 0)
   master_outb(1, EXT_ENABLE_REG);
 }
}
