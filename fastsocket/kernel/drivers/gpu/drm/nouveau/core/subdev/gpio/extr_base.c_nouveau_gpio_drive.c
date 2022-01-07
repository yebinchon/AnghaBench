
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_gpio {int (* drive ) (struct nouveau_gpio*,int,int,int) ;} ;


 int ENODEV ;
 int stub1 (struct nouveau_gpio*,int,int,int) ;

__attribute__((used)) static int
nouveau_gpio_drive(struct nouveau_gpio *gpio,
     int idx, int line, int dir, int out)
{
 return gpio->drive ? gpio->drive(gpio, line, dir, out) : -ENODEV;
}
