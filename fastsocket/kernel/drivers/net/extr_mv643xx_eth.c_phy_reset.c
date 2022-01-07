
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_private {int phy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 int phy_read (int ,int ) ;
 scalar_t__ phy_write (int ,int ,int) ;

__attribute__((used)) static void phy_reset(struct mv643xx_eth_private *mp)
{
 int data;

 data = phy_read(mp->phy, MII_BMCR);
 if (data < 0)
  return;

 data |= BMCR_RESET;
 if (phy_write(mp->phy, MII_BMCR, data) < 0)
  return;

 do {
  data = phy_read(mp->phy, MII_BMCR);
 } while (data >= 0 && data & BMCR_RESET);
}
