
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int base; } ;
struct s3c_gpio_chip {TYPE_1__ chip; } ;
typedef int s3c_gpio_pull_t ;


 int EINVAL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int s3c_gpio_do_setpull (struct s3c_gpio_chip*,int,int ) ;
 struct s3c_gpio_chip* s3c_gpiolib_getchip (unsigned int) ;

int s3c_gpio_setpull(unsigned int pin, s3c_gpio_pull_t pull)
{
 struct s3c_gpio_chip *chip = s3c_gpiolib_getchip(pin);
 unsigned long flags;
 int offset, ret;

 if (!chip)
  return -EINVAL;

 offset = pin - chip->chip.base;

 local_irq_save(flags);
 ret = s3c_gpio_do_setpull(chip, offset, pull);
 local_irq_restore(flags);

 return ret;
}
