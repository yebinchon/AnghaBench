
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_MMIO_RADIO_HWENABLED_HI ;
 int B43_MMIO_RADIO_HWENABLED_HI_MASK ;
 int b43_read32 (struct b43_wldev*,int ) ;

bool b43_is_hw_radio_enabled(struct b43_wldev *dev)
{
 return !(b43_read32(dev, B43_MMIO_RADIO_HWENABLED_HI)
  & B43_MMIO_RADIO_HWENABLED_HI_MASK);
}
