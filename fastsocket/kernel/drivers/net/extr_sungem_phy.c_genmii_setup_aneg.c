
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_phy {int autoneg; int advertising; scalar_t__ pause; int duplex; int speed; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISE_100BASE4 ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_ALL ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int DUPLEX_HALF ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int SPEED_10 ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int genmii_setup_aneg(struct mii_phy *phy, u32 advertise)
{
 u16 ctl, adv;

 phy->autoneg = 1;
 phy->speed = SPEED_10;
 phy->duplex = DUPLEX_HALF;
 phy->pause = 0;
 phy->advertising = advertise;


 adv = phy_read(phy, MII_ADVERTISE);
 adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4);
 if (advertise & ADVERTISED_10baseT_Half)
  adv |= ADVERTISE_10HALF;
 if (advertise & ADVERTISED_10baseT_Full)
  adv |= ADVERTISE_10FULL;
 if (advertise & ADVERTISED_100baseT_Half)
  adv |= ADVERTISE_100HALF;
 if (advertise & ADVERTISED_100baseT_Full)
  adv |= ADVERTISE_100FULL;
 phy_write(phy, MII_ADVERTISE, adv);


 ctl = phy_read(phy, MII_BMCR);
 ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
 phy_write(phy, MII_BMCR, ctl);

 return 0;
}
