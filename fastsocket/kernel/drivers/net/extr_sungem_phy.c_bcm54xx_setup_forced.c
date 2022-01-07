
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int speed; int duplex; scalar_t__ pause; scalar_t__ autoneg; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPD2 ;
 int BMCR_SPEED100 ;
 int DUPLEX_FULL ;
 int MII_BMCR ;



 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int bcm54xx_setup_forced(struct mii_phy *phy, int speed, int fd)
{
 u16 ctl;

 phy->autoneg = 0;
 phy->speed = speed;
 phy->duplex = fd;
 phy->pause = 0;

 ctl = phy_read(phy, MII_BMCR);
 ctl &= ~(BMCR_FULLDPLX|BMCR_SPEED100|BMCR_SPD2|BMCR_ANENABLE);


 phy_write(phy, MII_BMCR, ctl | BMCR_RESET);


 switch(speed) {
 case 130:
  break;
 case 129:
  ctl |= BMCR_SPEED100;
  break;
 case 128:
  ctl |= BMCR_SPD2;
 }
 if (fd == DUPLEX_FULL)
  ctl |= BMCR_FULLDPLX;



 phy_write(phy, MII_BMCR, ctl);

 return 0;
}
