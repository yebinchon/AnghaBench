
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int radio_ver; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_bbatt {int att; } ;



__attribute__((used)) static void default_baseband_attenuation(struct b43_wldev *dev,
      struct b43_bbatt *bb)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->radio_ver == 0x2050 && phy->radio_rev < 6)
  bb->att = 0;
 else
  bb->att = 2;
}
