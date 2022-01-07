
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_ENABLE_REG ;
 int master_outb (int ,int ) ;
 int mext_disabled ;
 int printk (char*,int) ;

void q40_disable_irq(unsigned int irq)
{





 if (irq >= 5 && irq <= 15) {
  master_outb(0, EXT_ENABLE_REG);
  mext_disabled++;
  if (mext_disabled > 1)
   printk("disable_irq nesting count %d\n",mext_disabled);
 }
}
