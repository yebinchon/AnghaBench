
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int EINVAL ;
 unsigned int IRQ_KEYPAD ;

 int IRQ_TO_GPIO (unsigned int) ;

 unsigned int PWER ;
 unsigned int PWER_RTC ;
 int gpio_set_wake (int,unsigned int) ;
 int keypad_set_wake (unsigned int) ;

__attribute__((used)) static int pxa27x_set_wake(unsigned int irq, unsigned int on)
{
 int gpio = IRQ_TO_GPIO(irq);
 uint32_t mask;

 if (gpio >= 0 && gpio < 128)
  return gpio_set_wake(gpio, on);

 if (irq == IRQ_KEYPAD)
  return keypad_set_wake(on);

 switch (irq) {
 case 129:
  mask = PWER_RTC;
  break;
 case 128:
  mask = 1u << 26;
  break;
 default:
  return -EINVAL;
 }

 if (on)
  PWER |= mask;
 else
  PWER &=~mask;

 return 0;
}
