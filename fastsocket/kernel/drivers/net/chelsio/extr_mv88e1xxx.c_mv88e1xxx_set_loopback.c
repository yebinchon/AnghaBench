
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_LOOPBACK ;
 int MII_BMCR ;
 int mdio_clear_bit (struct cphy*,int ,int ) ;
 int mdio_set_bit (struct cphy*,int ,int ) ;

__attribute__((used)) static int mv88e1xxx_set_loopback(struct cphy *cphy, int on)
{
 if (on)
  mdio_set_bit(cphy, MII_BMCR, BMCR_LOOPBACK);
 else
  mdio_clear_bit(cphy, MII_BMCR, BMCR_LOOPBACK);
 return 0;
}
