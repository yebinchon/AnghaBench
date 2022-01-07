
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_ANRESTART ;
 int MII_BMCR ;
 int mdio_set_bit (struct cphy*,int ,int ) ;

__attribute__((used)) static int mv88e1xxx_autoneg_restart(struct cphy *cphy)
{
 mdio_set_bit(cphy, MII_BMCR, BMCR_ANRESTART);
 return 0;
}
