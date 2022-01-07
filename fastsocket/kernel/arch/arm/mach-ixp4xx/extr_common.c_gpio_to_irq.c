
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int* irq2gpio ;

int gpio_to_irq(int gpio)
{
 int irq;

 for (irq = 0; irq < 32; irq++) {
  if (irq2gpio[irq] == gpio)
   return irq;
 }
 return -EINVAL;
}
