
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct b43legacy_phy {int txctl2; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 scalar_t__ b43legacy_phy_lo_g_singledeviation (struct b43legacy_wldev*,int ) ;
 int b43legacy_radio_write16 (struct b43legacy_wldev*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void b43legacy_phy_lo_g_measure_txctl2(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 u16 txctl2 = 0;
 u16 i;
 u32 smallest;
 u32 tmp;

 b43legacy_radio_write16(dev, 0x0052, 0x0000);
 udelay(10);
 smallest = b43legacy_phy_lo_g_singledeviation(dev, 0);
 for (i = 0; i < 16; i++) {
  b43legacy_radio_write16(dev, 0x0052, i);
  udelay(10);
  tmp = b43legacy_phy_lo_g_singledeviation(dev, 0);
  if (tmp < smallest) {
   smallest = tmp;
   txctl2 = i;
  }
 }
 phy->txctl2 = txctl2;
}
