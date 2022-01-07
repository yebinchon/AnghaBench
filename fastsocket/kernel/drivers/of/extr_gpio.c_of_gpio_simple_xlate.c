
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ const ngpio; } ;
struct of_gpio_chip {int gpio_cells; TYPE_1__ gc; } ;
struct device_node {int dummy; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int EINVAL ;
 int WARN_ON (int) ;

int of_gpio_simple_xlate(struct of_gpio_chip *of_gc, struct device_node *np,
    const void *gpio_spec, enum of_gpio_flags *flags)
{
 const u32 *gpio = gpio_spec;







 if (of_gc->gpio_cells < 2) {
  WARN_ON(1);
  return -EINVAL;
 }

 if (*gpio > of_gc->gc.ngpio)
  return -EINVAL;

 if (flags)
  *flags = gpio[1];

 return *gpio;
}
