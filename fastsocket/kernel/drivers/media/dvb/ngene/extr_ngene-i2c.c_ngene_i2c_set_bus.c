
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene {int i2c_current_bus; TYPE_1__* card_info; } ;
struct TYPE_2__ {int i2c_access; } ;


 int ngene_command_gpio_set (struct ngene*,int,int) ;

__attribute__((used)) static void ngene_i2c_set_bus(struct ngene *dev, int bus)
{
 if (!(dev->card_info->i2c_access & 2))
  return;
 if (dev->i2c_current_bus == bus)
  return;

 switch (bus) {
 case 0:
  ngene_command_gpio_set(dev, 3, 0);
  ngene_command_gpio_set(dev, 2, 1);
  break;

 case 1:
  ngene_command_gpio_set(dev, 2, 0);
  ngene_command_gpio_set(dev, 3, 1);
  break;
 }
 dev->i2c_current_bus = bus;
}
