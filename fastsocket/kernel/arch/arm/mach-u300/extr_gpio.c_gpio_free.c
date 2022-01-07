
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ users; } ;


 int dev_warn (int ,char*,unsigned int) ;
 TYPE_1__* gpio_pin ;
 int gpio_users ;
 int gpiodev ;
 scalar_t__ unlikely (int) ;

void gpio_free(unsigned gpio)
{
 gpio_users--;
 gpio_pin[gpio].users--;
 if (unlikely(gpio_pin[gpio].users < 0)) {
  dev_warn(gpiodev, "warning: gpio#%d release mismatch\n",
    gpio);
  gpio_pin[gpio].users = 0;
 }

 return;
}
