
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stmmac_priv {int bsp_priv; int (* phy_reset ) (int ) ;TYPE_3__* mac_type; } ;
struct net_device {unsigned long base_addr; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_4__ {unsigned int addr; } ;
struct TYPE_5__ {TYPE_1__ mii; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int pr_debug (char*) ;
 int stub1 (int ) ;
 int writel (int ,unsigned long) ;

__attribute__((used)) static int stmmac_mdio_reset(struct mii_bus *bus)
{
 struct net_device *ndev = bus->priv;
 struct stmmac_priv *priv = netdev_priv(ndev);
 unsigned long ioaddr = ndev->base_addr;
 unsigned int mii_address = priv->mac_type->hw.mii.addr;

 if (priv->phy_reset) {
  pr_debug("stmmac_mdio_reset: calling phy_reset\n");
  priv->phy_reset(priv->bsp_priv);
 }





 writel(0, ioaddr + mii_address);

 return 0;
}
