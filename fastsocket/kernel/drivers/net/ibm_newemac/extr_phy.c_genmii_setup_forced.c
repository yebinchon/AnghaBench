
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int speed; int duplex; scalar_t__ asym_pause; scalar_t__ pause; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int MII_BMCR ;



 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int genmii_setup_forced(struct mii_phy *phy, int speed, int fd)
{
 int ctl;

 phy->autoneg = AUTONEG_DISABLE;
 phy->speed = speed;
 phy->duplex = fd;
 phy->pause = phy->asym_pause = 0;

 ctl = phy_read(phy, MII_BMCR);
 if (ctl < 0)
  return ctl;
 ctl &= ~(BMCR_FULLDPLX | BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);


 phy_write(phy, MII_BMCR, ctl | BMCR_RESET);


 switch (speed) {
 case 130:
  break;
 case 129:
  ctl |= BMCR_SPEED100;
  break;
 case 128:
  ctl |= BMCR_SPEED1000;
  break;
 default:
  return -EINVAL;
 }
 if (fd == DUPLEX_FULL)
  ctl |= BMCR_FULLDPLX;
 phy_write(phy, MII_BMCR, ctl);

 return 0;
}
