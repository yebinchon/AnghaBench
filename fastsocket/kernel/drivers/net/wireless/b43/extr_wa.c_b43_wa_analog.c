
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_OFDMTAB_DAC ;
 scalar_t__ B43_PHYTYPE_A ;
 int B43_PHYVER_VERSION ;
 int B43_PHY_PWRDOWN ;
 int B43_PHY_VERSION_OFDM ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_wa_analog(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 ofdmrev;

 ofdmrev = b43_phy_read(dev, B43_PHY_VERSION_OFDM) & B43_PHYVER_VERSION;
 if (ofdmrev > 2) {
  if (phy->type == B43_PHYTYPE_A)
   b43_phy_write(dev, B43_PHY_PWRDOWN, 0x1808);
  else
   b43_phy_write(dev, B43_PHY_PWRDOWN, 0x1000);
 } else {
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 3, 0x1044);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 4, 0x7201);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 6, 0x0040);
 }
}
