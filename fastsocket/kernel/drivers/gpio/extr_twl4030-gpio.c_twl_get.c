
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int LEDEN_LEDAON ;
 int LEDEN_LEDBON ;
 unsigned int TWL4030_GPIO_MAX ;
 int cached_leden ;
 int twl4030_get_gpio_datain (unsigned int) ;

__attribute__((used)) static int twl_get(struct gpio_chip *chip, unsigned offset)
{
 int status = 0;

 if (offset < TWL4030_GPIO_MAX)
  status = twl4030_get_gpio_datain(offset);
 else if (offset == TWL4030_GPIO_MAX)
  status = cached_leden & LEDEN_LEDAON;
 else
  status = cached_leden & LEDEN_LEDBON;
 return (status < 0) ? 0 : status;
}
