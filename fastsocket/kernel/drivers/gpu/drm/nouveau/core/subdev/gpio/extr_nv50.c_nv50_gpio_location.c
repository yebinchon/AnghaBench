
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int
nv50_gpio_location(int line, u32 *reg, u32 *shift)
{
 const u32 nv50_gpio_reg[4] = { 0xe104, 0xe108, 0xe280, 0xe284 };

 if (line >= 32)
  return -EINVAL;

 *reg = nv50_gpio_reg[line >> 3];
 *shift = (line & 7) << 2;
 return 0;
}
