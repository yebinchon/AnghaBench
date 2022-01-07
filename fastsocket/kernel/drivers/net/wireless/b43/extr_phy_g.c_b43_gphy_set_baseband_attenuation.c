
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int analog; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_MMIO_PHY0 ;
 int B43_PHY_DACCTL ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

void b43_gphy_set_baseband_attenuation(struct b43_wldev *dev,
           u16 baseband_attenuation)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->analog == 0) {
  b43_write16(dev, B43_MMIO_PHY0, (b43_read16(dev, B43_MMIO_PHY0)
       & 0xFFF0) |
       baseband_attenuation);
 } else if (phy->analog > 1) {
  b43_phy_maskset(dev, B43_PHY_DACCTL, 0xFFC3, (baseband_attenuation << 2));
 } else {
  b43_phy_maskset(dev, B43_PHY_DACCTL, 0xFF87, (baseband_attenuation << 3));
 }
}
