
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_phy {int dummy; } ;


 int BCM5461_FIBER_LINK ;
 int BCM5461_MODE_MASK ;
 int BCM54XX_COPPER ;
 int MII_NCONFIG ;
 int genmii_poll_link (struct mii_phy*) ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm5461_poll_link(struct mii_phy* phy)
{
 u32 phy_reg;
 int mode;


 phy_write(phy, MII_NCONFIG, 0x7c00);
 phy_reg = phy_read(phy, MII_NCONFIG);

 mode = (phy_reg & BCM5461_MODE_MASK ) >> 1;

 if ( mode == BCM54XX_COPPER)
  return genmii_poll_link(phy);


 phy_write(phy, MII_NCONFIG, 0x7000);
 phy_reg = phy_read(phy, MII_NCONFIG);

 if (phy_reg & BCM5461_FIBER_LINK)
  return 1;
 else
  return 0;
}
