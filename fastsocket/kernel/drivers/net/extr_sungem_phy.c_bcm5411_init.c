
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int BMCR_RESET ;
 int MII_BCM5400_GB_CONTROL ;
 int MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ;
 int MII_BMCR ;
 int phy_read (struct mii_phy*,int) ;
 int phy_write (struct mii_phy*,int,int) ;
 int reset_one_mii_phy (struct mii_phy*,int) ;
 int udelay (int) ;

__attribute__((used)) static int bcm5411_init(struct mii_phy* phy)
{
 u16 data;




 phy_write(phy, 0x1c, 0x8c23);
 phy_write(phy, 0x1c, 0x8ca3);
 phy_write(phy, 0x1c, 0x8c23);




 phy_write(phy, MII_BMCR, BMCR_RESET);
 phy_write(phy, MII_BMCR, 0x1340);

 data = phy_read(phy, MII_BCM5400_GB_CONTROL);
 data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
 phy_write(phy, MII_BCM5400_GB_CONTROL, data);

 udelay(10);


 (void)reset_one_mii_phy(phy, 0x1f);

 return 0;
}
