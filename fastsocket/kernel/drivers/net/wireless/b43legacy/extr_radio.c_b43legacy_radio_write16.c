
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MMIO_RADIO_CONTROL ;
 int B43legacy_MMIO_RADIO_DATA_LOW ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int ) ;
 int mmiowb () ;

void b43legacy_radio_write16(struct b43legacy_wldev *dev, u16 offset, u16 val)
{
 b43legacy_write16(dev, B43legacy_MMIO_RADIO_CONTROL, offset);
 mmiowb();
 b43legacy_write16(dev, B43legacy_MMIO_RADIO_DATA_LOW, val);
}
