
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int __set_level (unsigned int,int) ;
 int gpio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void orion_gpio_set_value(struct gpio_chip *chip, unsigned pin,
 int value)
{
 unsigned long flags;

 spin_lock_irqsave(&gpio_lock, flags);


 __set_level(pin, value);

 spin_unlock_irqrestore(&gpio_lock, flags);
}
