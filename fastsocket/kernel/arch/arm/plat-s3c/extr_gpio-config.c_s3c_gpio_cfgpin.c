
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int base; } ;
struct s3c_gpio_chip {TYPE_1__ chip; } ;


 int EINVAL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int s3c_gpio_do_setcfg (struct s3c_gpio_chip*,int,unsigned int) ;
 struct s3c_gpio_chip* s3c_gpiolib_getchip (unsigned int) ;

int s3c_gpio_cfgpin(unsigned int pin, unsigned int config)
{
 struct s3c_gpio_chip *chip = s3c_gpiolib_getchip(pin);
 unsigned long flags;
 int offset;
 int ret;

 if (!chip)
  return -EINVAL;

 offset = pin - chip->chip.base;

 local_irq_save(flags);
 ret = s3c_gpio_do_setcfg(chip, offset, config);
 local_irq_restore(flags);

 return ret;
}
