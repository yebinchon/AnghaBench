
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_gpio {int dummy; } ;


 int EINVAL ;
 scalar_t__ nv50_gpio_location (int,int*,int*) ;
 int nv_mask (struct nouveau_gpio*,int,int,int) ;

__attribute__((used)) static int
nv50_gpio_drive(struct nouveau_gpio *gpio, int line, int dir, int out)
{
 u32 reg, shift;

 if (nv50_gpio_location(line, &reg, &shift))
  return -EINVAL;

 nv_mask(gpio, reg, 7 << shift, (((dir ^ 1) << 1) | out) << shift);
 return 0;
}
