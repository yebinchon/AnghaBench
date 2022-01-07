
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MACCTL_RADIOLOCK ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_MMIO_PHY_VER ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int mmiowb () ;

void b43legacy_radio_unlock(struct b43legacy_wldev *dev)
{
 u32 status;

 b43legacy_read16(dev, B43legacy_MMIO_PHY_VER);
 status = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 B43legacy_WARN_ON(!(status & B43legacy_MACCTL_RADIOLOCK));
 status &= ~B43legacy_MACCTL_RADIOLOCK;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, status);
 mmiowb();
}
