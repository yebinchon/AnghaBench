
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_priv {int flow_ctrl; int lock; int pause; TYPE_2__* mac_type; struct phy_device* phydev; } ;
struct phy_device {int duplex; int addr; int speed; scalar_t__ autoneg; int advertising; int supported; } ;
struct net_device {unsigned long base_addr; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct ethtool_cmd {int phy_address; int duplex; int speed; scalar_t__ autoneg; int advertising; int supported; int cmd; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* flow_ctrl ) (unsigned long,int ,int,int ) ;} ;


 int ETHTOOL_NWAY_RST ;
 int FLOW_OFF ;
 int FLOW_RX ;
 int FLOW_TX ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int phy_ethtool_sset (struct phy_device*,struct ethtool_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned long,int ,int,int ) ;

__attribute__((used)) static int
stmmac_set_pauseparam(struct net_device *netdev,
        struct ethtool_pauseparam *pause)
{
 struct stmmac_priv *priv = netdev_priv(netdev);
 struct phy_device *phy = priv->phydev;
 int new_pause = FLOW_OFF;
 int ret = 0;

 spin_lock(&priv->lock);

 if (pause->rx_pause)
  new_pause |= FLOW_RX;
 if (pause->tx_pause)
  new_pause |= FLOW_TX;

 priv->flow_ctrl = new_pause;

 if (phy->autoneg) {
  if (netif_running(netdev)) {
   struct ethtool_cmd cmd;

   cmd.cmd = ETHTOOL_NWAY_RST;
   cmd.supported = phy->supported;
   cmd.advertising = phy->advertising;
   cmd.autoneg = phy->autoneg;
   cmd.speed = phy->speed;
   cmd.duplex = phy->duplex;
   cmd.phy_address = phy->addr;
   ret = phy_ethtool_sset(phy, &cmd);
  }
 } else {
  unsigned long ioaddr = netdev->base_addr;
  priv->mac_type->ops->flow_ctrl(ioaddr, phy->duplex,
            priv->flow_ctrl, priv->pause);
 }
 spin_unlock(&priv->lock);
 return ret;
}
