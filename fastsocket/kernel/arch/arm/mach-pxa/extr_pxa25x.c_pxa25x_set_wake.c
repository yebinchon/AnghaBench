
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 unsigned int IRQ_RTCAlrm ;
 int IRQ_TO_GPIO (unsigned int) ;
 int PWER ;
 int PWER_RTC ;
 int gpio_set_wake (int,unsigned int) ;

__attribute__((used)) static int pxa25x_set_wake(unsigned int irq, unsigned int on)
{
 int gpio = IRQ_TO_GPIO(irq);
 uint32_t mask = 0;

 if (gpio >= 0 && gpio < 85)
  return gpio_set_wake(gpio, on);

 if (irq == IRQ_RTCAlrm) {
  mask = PWER_RTC;
  goto set_pwer;
 }

 return -EINVAL;

set_pwer:
 if (on)
  PWER |= mask;
 else
  PWER &=~mask;

 return 0;
}
