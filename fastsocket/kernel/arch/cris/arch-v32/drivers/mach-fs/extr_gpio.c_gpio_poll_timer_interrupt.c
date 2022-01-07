
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_RETVAL (int ) ;
 int etrax_gpio_wake_up_check () ;
 scalar_t__ gpio_some_alarms ;

__attribute__((used)) static irqreturn_t
gpio_poll_timer_interrupt(int irq, void *dev_id)
{
 if (gpio_some_alarms)
  return IRQ_RETVAL(etrax_gpio_wake_up_check());
 return IRQ_NONE;
}
