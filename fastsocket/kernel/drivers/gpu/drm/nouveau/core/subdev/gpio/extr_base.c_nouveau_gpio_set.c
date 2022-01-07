
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nouveau_gpio {int dummy; } ;
struct dcb_gpio_func {int* log; int line; } ;


 int nouveau_gpio_drive (struct nouveau_gpio*,int,int ,int,int) ;
 int nouveau_gpio_find (struct nouveau_gpio*,int,int ,int ,struct dcb_gpio_func*) ;

__attribute__((used)) static int
nouveau_gpio_set(struct nouveau_gpio *gpio, int idx, u8 tag, u8 line, int state)
{
 struct dcb_gpio_func func;
 int ret;

 ret = nouveau_gpio_find(gpio, idx, tag, line, &func);
 if (ret == 0) {
  int dir = !!(func.log[state] & 0x02);
  int out = !!(func.log[state] & 0x01);
  ret = nouveau_gpio_drive(gpio, idx, func.line, dir, out);
 }

 return ret;
}
