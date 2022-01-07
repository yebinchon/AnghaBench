
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int* irq2gpio ;

int irq_to_gpio(int irq)
{
 int gpio = (irq < 32) ? irq2gpio[irq] : -EINVAL;

 if (gpio == -1)
  return -EINVAL;

 return gpio;
}
