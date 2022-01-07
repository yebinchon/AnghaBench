
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ users; } ;


 int EINVAL ;
 TYPE_1__* gpio_pin ;
 int gpio_users ;

int gpio_request(unsigned gpio, const char *label)
{
 if (gpio_pin[gpio].users)
  return -EINVAL;
 else
  gpio_pin[gpio].users++;

 gpio_users++;

 return 0;
}
