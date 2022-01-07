
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_GPIO_CONTROL ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_led_turn_on(struct b43_wldev *dev, u8 led_index,
       bool activelow)
{
 u16 ctl;

 ctl = b43_read16(dev, B43_MMIO_GPIO_CONTROL);
 if (activelow)
  ctl &= ~(1 << led_index);
 else
  ctl |= (1 << led_index);
 b43_write16(dev, B43_MMIO_GPIO_CONTROL, ctl);
}
