
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int MII_BMCR ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int simple_mdio_read (struct cphy*,int ,int*) ;
 int simple_mdio_write (struct cphy*,int ,int) ;

__attribute__((used)) static int mv88e1xxx_set_speed_duplex(struct cphy *phy, int speed, int duplex)
{
 u32 ctl;

 (void) simple_mdio_read(phy, MII_BMCR, &ctl);
 if (speed >= 0) {
  ctl &= ~(BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);
  if (speed == SPEED_100)
   ctl |= BMCR_SPEED100;
  else if (speed == SPEED_1000)
   ctl |= BMCR_SPEED1000;
 }
 if (duplex >= 0) {
  ctl &= ~(BMCR_FULLDPLX | BMCR_ANENABLE);
  if (duplex == DUPLEX_FULL)
   ctl |= BMCR_FULLDPLX;
 }
 if (ctl & BMCR_SPEED1000)
  ctl |= BMCR_ANENABLE;
 (void) simple_mdio_write(phy, MII_BMCR, ctl);
 return 0;
}
