
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int MII_BCM5221_SHDOW_AUX_MODE4 ;
 int MII_BCM5221_SHDOW_AUX_MODE4_CLKLOPWR ;
 int MII_BCM5221_SHDOW_AUX_STAT2 ;
 int MII_BCM5221_SHDOW_AUX_STAT2_APD ;
 int MII_BCM5221_TEST ;
 int MII_BCM5221_TEST_ENABLE_SHADOWS ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm5221_init(struct mii_phy* phy)
{
 u16 data;

 data = phy_read(phy, MII_BCM5221_TEST);
 phy_write(phy, MII_BCM5221_TEST,
  data | MII_BCM5221_TEST_ENABLE_SHADOWS);

 data = phy_read(phy, MII_BCM5221_SHDOW_AUX_STAT2);
 phy_write(phy, MII_BCM5221_SHDOW_AUX_STAT2,
  data | MII_BCM5221_SHDOW_AUX_STAT2_APD);

 data = phy_read(phy, MII_BCM5221_SHDOW_AUX_MODE4);
 phy_write(phy, MII_BCM5221_SHDOW_AUX_MODE4,
  data | MII_BCM5221_SHDOW_AUX_MODE4_CLKLOPWR);

 data = phy_read(phy, MII_BCM5221_TEST);
 phy_write(phy, MII_BCM5221_TEST,
  data & ~MII_BCM5221_TEST_ENABLE_SHADOWS);

 return 0;
}
