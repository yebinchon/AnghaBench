
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_gpio {int (* sense ) (struct nouveau_gpio*,int) ;} ;


 int ENODEV ;
 int stub1 (struct nouveau_gpio*,int) ;

__attribute__((used)) static int
nouveau_gpio_sense(struct nouveau_gpio *gpio, int idx, int line)
{
 return gpio->sense ? gpio->sense(gpio, line) : -ENODEV;
}
