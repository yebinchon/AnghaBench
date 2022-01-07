
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
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int ADVERTISE_100BASE4 ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int DUPLEX_HALF ;
 int MII_1000BASETCONTROL ;
 int MII_1000BASETCONTROL_FULLDUPLEXCAP ;
 int MII_1000BASETCONTROL_HALFDUPLEXCAP ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int SPEED_10 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm54xx_setup_aneg(struct mii_phy *phy, u32 advertise)
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
 if (advertise & ADVERTISED_Pause)
  adv |= ADVERTISE_PAUSE_CAP;
 if (advertise & ADVERTISED_Asym_Pause)
  adv |= ADVERTISE_PAUSE_ASYM;
 phy_write(phy, MII_ADVERTISE, adv);


 adv = phy_read(phy, MII_1000BASETCONTROL);
 adv &= ~(MII_1000BASETCONTROL_FULLDUPLEXCAP|MII_1000BASETCONTROL_HALFDUPLEXCAP);
 if (advertise & SUPPORTED_1000baseT_Half)
  adv |= MII_1000BASETCONTROL_HALFDUPLEXCAP;
 if (advertise & SUPPORTED_1000baseT_Full)
  adv |= MII_1000BASETCONTROL_FULLDUPLEXCAP;
 phy_write(phy, MII_1000BASETCONTROL, adv);


 ctl = phy_read(phy, MII_BMCR);
 ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
 phy_write(phy, MII_BMCR, ctl);

 return 0;
}
