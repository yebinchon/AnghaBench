
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int* num_debug ;
 int printk (char*,int) ;

irqreturn_t mac_debug_handler(int irq, void *dev_id)
{
 if (num_debug[irq] < 10) {
  printk("DEBUG: Unexpected IRQ %d\n", irq);
  num_debug[irq]++;
 }
 return IRQ_HANDLED;
}
