
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int dev; } ;
struct fs_enet_private {int oldduplex; struct phy_device* phydev; TYPE_1__* fpi; scalar_t__ oldspeed; scalar_t__ oldlink; } ;
struct TYPE_2__ {int phy_node; } ;


 int ENODEV ;
 int PHY_INTERFACE_MODE_MII ;
 int dev_err (int *,char*) ;
 int fs_adjust_link ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,int ) ;
 struct phy_device* of_phy_connect_fixed_link (struct net_device*,int *,int ) ;

__attribute__((used)) static int fs_init_phy(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 struct phy_device *phydev;

 fep->oldlink = 0;
 fep->oldspeed = 0;
 fep->oldduplex = -1;

 phydev = of_phy_connect(dev, fep->fpi->phy_node, &fs_adjust_link, 0,
    PHY_INTERFACE_MODE_MII);
 if (!phydev) {
  phydev = of_phy_connect_fixed_link(dev, &fs_adjust_link,
         PHY_INTERFACE_MODE_MII);
 }
 if (!phydev) {
  dev_err(&dev->dev, "Could not attach to PHY\n");
  return -ENODEV;
 }

 fep->phydev = phydev;

 return 0;
}
