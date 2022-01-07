
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {int calibrated; scalar_t__ type; int rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 int B43legacy_MMIO_MACCTL ;
 scalar_t__ B43legacy_PHYTYPE_G ;
 int B43legacy_TMSLOW_GMODE ;
 int b43legacy_phy_initg (struct b43legacy_wldev*) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_wireless_core_reset (struct b43legacy_wldev*,int ) ;

void b43legacy_phy_calibrate(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;

 b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 if (phy->calibrated)
  return;
 if (phy->type == B43legacy_PHYTYPE_G && phy->rev == 1) {
  b43legacy_wireless_core_reset(dev, 0);
  b43legacy_phy_initg(dev);
  b43legacy_wireless_core_reset(dev, B43legacy_TMSLOW_GMODE);
 }
 phy->calibrated = 1;
}
