
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GEODE_DEV_GPIO ;
 int GPIO_MAP_W ;
 int GPIO_MAP_X ;
 int GPIO_MAP_Y ;
 int GPIO_MAP_Z ;
 int geode_get_dev_base (int ) ;
 int inl (int) ;
 int outl (int,int) ;

void geode_gpio_setup_event(unsigned int gpio, int pair, int pme)
{
 u32 base = geode_get_dev_base(GEODE_DEV_GPIO);
 u32 offset, shift, val;

 if (gpio >= 24)
  offset = GPIO_MAP_W;
 else if (gpio >= 16)
  offset = GPIO_MAP_Z;
 else if (gpio >= 8)
  offset = GPIO_MAP_Y;
 else
  offset = GPIO_MAP_X;

 shift = (gpio % 8) * 4;

 val = inl(base + offset);


 val &= ~(0xF << shift);



 val |= ((pair & 7) << shift);



 if (pme)
  val |= (1 << (shift + 3));

 outl(val, base + offset);
}
