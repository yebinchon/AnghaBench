
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_USED ;
 scalar_t__* irq_status ;

int check_irq_used(int irq)
{
 if (irq_status[irq] == IRQ_USED)
  return 1;

 return -1;
}
