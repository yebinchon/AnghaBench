
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_gpio {int dummy; } ;


 int nv_mask (struct nouveau_gpio*,int,int,int) ;

int
nvd0_gpio_drive(struct nouveau_gpio *gpio, int line, int dir, int out)
{
 u32 data = ((dir ^ 1) << 13) | (out << 12);
 nv_mask(gpio, 0x00d610 + (line * 4), 0x00003000, data);
 nv_mask(gpio, 0x00d604, 0x00000001, 0x00000001);
 return 0;
}
