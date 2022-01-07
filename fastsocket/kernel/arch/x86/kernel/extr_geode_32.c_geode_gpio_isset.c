
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEODE_DEV_GPIO ;
 int geode_get_dev_base (int ) ;
 int inl (int) ;

int geode_gpio_isset(u32 gpio, unsigned int reg)
{
 u32 base = geode_get_dev_base(GEODE_DEV_GPIO);
 u32 val;

 if (!base)
  return 0;


 if (gpio & 0xFFFF) {
  val = inl(base + reg) & (gpio & 0xFFFF);
  if ((gpio & 0xFFFF) == val)
   return 1;
 }

 gpio >>= 16;
 if (gpio) {
  val = inl(base + 0x80 + reg) & gpio;
  if (gpio == val)
   return 1;
 }
 return 0;
}
