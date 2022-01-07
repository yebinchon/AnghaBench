
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPDR ;
 int GPIO_GPIO (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sa1100_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int sa1100_direction_output(struct gpio_chip *chip, unsigned offset, int value)
{
 unsigned long flags;

 local_irq_save(flags);
 sa1100_gpio_set(chip, offset, value);
 GPDR |= GPIO_GPIO(offset);
 local_irq_restore(flags);
 return 0;
}
