
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_gpio {int (* reset ) (struct nouveau_gpio*,int ) ;int base; } ;


 int DCB_GPIO_UNUSED ;
 scalar_t__ dmi_check_system (int ) ;
 int gpio_reset_ids ;
 int nouveau_subdev_init (int *) ;
 int stub1 (struct nouveau_gpio*,int ) ;

int
nouveau_gpio_init(struct nouveau_gpio *gpio)
{
 int ret = nouveau_subdev_init(&gpio->base);
 if (ret == 0 && gpio->reset) {
  if (dmi_check_system(gpio_reset_ids))
   gpio->reset(gpio, DCB_GPIO_UNUSED);
 }
 return ret;
}
