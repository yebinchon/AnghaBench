
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_PHY_ANTDWELL ;
 int B43_PHY_CRSTHRES1 ;
 int B43_PHY_CRSTHRES1_R1 ;
 int B43_PHY_CRSTHRES2 ;
 int B43_PHY_OFDM (int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_wa_crs_ed(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->rev == 1) {
  b43_phy_write(dev, B43_PHY_CRSTHRES1_R1, 0x4F19);
 } else if (phy->rev == 2) {
  b43_phy_write(dev, B43_PHY_CRSTHRES1, 0x1861);
  b43_phy_write(dev, B43_PHY_CRSTHRES2, 0x0271);
  b43_phy_set(dev, B43_PHY_ANTDWELL, 0x0800);
 } else {
  b43_phy_write(dev, B43_PHY_CRSTHRES1, 0x0098);
  b43_phy_write(dev, B43_PHY_CRSTHRES2, 0x0070);
  b43_phy_write(dev, B43_PHY_OFDM(0xC9), 0x0080);
  b43_phy_set(dev, B43_PHY_ANTDWELL, 0x0800);
 }
}
