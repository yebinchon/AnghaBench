
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int duplex; int advertising; int supported; int autoneg; int dev; } ;
struct mv643xx_eth_private {int dev; struct phy_device* phy; } ;


 int ADVERTISED_Autoneg ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int PHY_INTERFACE_MODE_GMII ;
 int dev_name (int *) ;
 int phy_attach (int ,int ,int ,int ) ;
 int phy_reset (struct mv643xx_eth_private*) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static void phy_init(struct mv643xx_eth_private *mp, int speed, int duplex)
{
 struct phy_device *phy = mp->phy;

 phy_reset(mp);

 phy_attach(mp->dev, dev_name(&phy->dev), 0, PHY_INTERFACE_MODE_GMII);

 if (speed == 0) {
  phy->autoneg = AUTONEG_ENABLE;
  phy->speed = 0;
  phy->duplex = 0;
  phy->advertising = phy->supported | ADVERTISED_Autoneg;
 } else {
  phy->autoneg = AUTONEG_DISABLE;
  phy->advertising = 0;
  phy->speed = speed;
  phy->duplex = duplex;
 }
 phy_start_aneg(phy);
}
