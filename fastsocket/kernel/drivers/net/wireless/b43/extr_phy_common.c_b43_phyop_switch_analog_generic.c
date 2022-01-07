
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_MMIO_PHY0 ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

void b43_phyop_switch_analog_generic(struct b43_wldev *dev, bool on)
{
 b43_write16(dev, B43_MMIO_PHY0, on ? 0 : 0xF4);
}
