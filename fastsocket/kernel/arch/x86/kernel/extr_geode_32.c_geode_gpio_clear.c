
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEODE_DEV_GPIO ;
 int geode_get_dev_base (int ) ;
 int outl (int,int) ;

void geode_gpio_clear(u32 gpio, unsigned int reg)
{
 u32 base = geode_get_dev_base(GEODE_DEV_GPIO);

 if (!base)
  return;


 if (gpio & 0xFFFF)
  outl((gpio & 0xFFFF) << 16, base + reg);

 gpio &= (0xFFFF << 16);
 if (gpio)
  outl(gpio, base + 0x80 + reg);
}
