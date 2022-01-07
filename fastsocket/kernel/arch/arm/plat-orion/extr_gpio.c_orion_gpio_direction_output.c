
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int GPIO_OUTPUT_OK ;
 int __set_blinking (unsigned int,int ) ;
 int __set_direction (unsigned int,int ) ;
 int __set_level (unsigned int,int) ;
 int gpio_lock ;
 int orion_gpio_is_valid (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int orion_gpio_direction_output(struct gpio_chip *chip, unsigned pin,
 int value)
{
 unsigned long flags;

 if (!orion_gpio_is_valid(pin, GPIO_OUTPUT_OK))
  return -EINVAL;

 spin_lock_irqsave(&gpio_lock, flags);


 __set_blinking(pin, 0);


 __set_level(pin, value);


 __set_direction(pin, 0);

 spin_unlock_irqrestore(&gpio_lock, flags);

 return 0;
}
