
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int dev; } ;


 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 scalar_t__ r6040_phy_mode_chk (int ) ;

__attribute__((used)) static void r6040_set_carrier(struct mii_if_info *mii)
{
 if (r6040_phy_mode_chk(mii->dev)) {

  if (!netif_carrier_ok(mii->dev))
   netif_carrier_on(mii->dev);
 } else
  r6040_phy_mode_chk(mii->dev);
}
