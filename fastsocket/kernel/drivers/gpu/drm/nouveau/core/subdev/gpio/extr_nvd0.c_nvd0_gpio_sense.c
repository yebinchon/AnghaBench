
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_gpio {int dummy; } ;


 int nv_rd32 (struct nouveau_gpio*,int) ;

int
nvd0_gpio_sense(struct nouveau_gpio *gpio, int line)
{
 return !!(nv_rd32(gpio, 0x00d610 + (line * 4)) & 0x00004000);
}
