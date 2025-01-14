
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_phy {struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {scalar_t__ aci_hw_rssi; } ;


 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int b43_switch_channel (struct b43_wldev*,int) ;

__attribute__((used)) static u8 b43_gphy_aci_detect(struct b43_wldev *dev, u8 channel)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 u8 ret = 0;
 u16 saved, rssi, temp;
 int i, j = 0;

 saved = b43_phy_read(dev, 0x0403);
 b43_switch_channel(dev, channel);
 b43_phy_write(dev, 0x0403, (saved & 0xFFF8) | 5);
 if (gphy->aci_hw_rssi)
  rssi = b43_phy_read(dev, 0x048A) & 0x3F;
 else
  rssi = saved & 0x3F;

 if (rssi > 32)
  rssi -= 64;
 for (i = 0; i < 100; i++) {
  temp = (b43_phy_read(dev, 0x047F) >> 8) & 0x3F;
  if (temp > 32)
   temp -= 64;
  if (temp < rssi)
   j++;
  if (j >= 20)
   ret = 1;
 }
 b43_phy_write(dev, 0x0403, saved);

 return ret;
}
