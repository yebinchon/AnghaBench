
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int gpio_lock ;
 int ns9360_gpio_set_value (unsigned int,int) ;
 scalar_t__ processor_is_ns9360 () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gpio_set_value(unsigned gpio, int value)
{
 unsigned long flags;
 spin_lock_irqsave(&gpio_lock, flags);





  BUG();

 spin_unlock_irqrestore(&gpio_lock, flags);
}
