
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nouveau_gpio {int dummy; } ;
struct dcb_gpio_func {int* log; int line; } ;


 int nouveau_gpio_find (struct nouveau_gpio*,int,int ,int ,struct dcb_gpio_func*) ;
 int nouveau_gpio_sense (struct nouveau_gpio*,int,int ) ;

__attribute__((used)) static int
nouveau_gpio_get(struct nouveau_gpio *gpio, int idx, u8 tag, u8 line)
{
 struct dcb_gpio_func func;
 int ret;

 ret = nouveau_gpio_find(gpio, idx, tag, line, &func);
 if (ret == 0) {
  ret = nouveau_gpio_sense(gpio, idx, func.line);
  if (ret >= 0)
   ret = (ret == (func.log[1] & 1));
 }

 return ret;
}
