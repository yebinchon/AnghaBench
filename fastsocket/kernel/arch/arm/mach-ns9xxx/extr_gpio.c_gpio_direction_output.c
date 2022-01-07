
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int EINVAL ;
 int __ns9360_gpio_configure (unsigned int,int,int ,int) ;
 int gpio_lock ;
 int gpio_set_value (unsigned int,int) ;
 scalar_t__ likely (int ) ;
 int ns9xxx_valid_gpio (unsigned int) ;
 scalar_t__ processor_is_ns9360 () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int gpio_direction_output(unsigned gpio, int value)
{
 if (likely(ns9xxx_valid_gpio(gpio))) {
  int ret = -EINVAL;
  unsigned long flags;

  gpio_set_value(gpio, value);

  spin_lock_irqsave(&gpio_lock, flags);





   BUG();

  spin_unlock_irqrestore(&gpio_lock, flags);

  return ret;
 } else
  return -EINVAL;
}
