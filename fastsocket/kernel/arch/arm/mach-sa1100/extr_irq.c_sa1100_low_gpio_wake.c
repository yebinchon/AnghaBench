
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWER ;

__attribute__((used)) static int sa1100_low_gpio_wake(unsigned int irq, unsigned int on)
{
 if (on)
  PWER |= 1 << irq;
 else
  PWER &= ~(1 << irq);
 return 0;
}
