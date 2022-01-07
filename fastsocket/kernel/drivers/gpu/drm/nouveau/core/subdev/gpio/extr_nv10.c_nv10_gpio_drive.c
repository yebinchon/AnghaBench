
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_gpio {int dummy; } ;


 int EINVAL ;
 int nv_mask (struct nouveau_gpio*,int,int,int) ;

__attribute__((used)) static int
nv10_gpio_drive(struct nouveau_gpio *gpio, int line, int dir, int out)
{
 u32 reg, mask, data;

 if (line < 2) {
  line = line * 16;
  reg = 0x600818;
  mask = 0x00000011;
  data = (dir << 4) | out;
 } else
 if (line < 10) {
  line = (line - 2) * 4;
  reg = 0x60081c;
  mask = 0x00000003;
  data = (dir << 1) | out;
 } else
 if (line < 14) {
  line = (line - 10) * 4;
  reg = 0x600850;
  mask = 0x00000003;
  data = (dir << 1) | out;
 } else {
  return -EINVAL;
 }

 nv_mask(gpio, reg, mask << line, data << line);
 return 0;
}
