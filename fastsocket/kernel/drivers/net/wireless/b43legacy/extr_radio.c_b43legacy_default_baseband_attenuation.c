
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_phy {int radio_ver; int radio_rev; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;



u16 b43legacy_default_baseband_attenuation(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;

 if (phy->radio_ver == 0x2050 && phy->radio_rev < 6)
  return 0;
 return 2;
}
