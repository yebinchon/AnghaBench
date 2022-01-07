
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {int flow_ctrl; int lock; TYPE_1__* phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct TYPE_2__ {int autoneg; } ;


 int FLOW_RX ;
 int FLOW_TX ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
stmmac_get_pauseparam(struct net_device *netdev,
        struct ethtool_pauseparam *pause)
{
 struct stmmac_priv *priv = netdev_priv(netdev);

 spin_lock(&priv->lock);

 pause->rx_pause = 0;
 pause->tx_pause = 0;
 pause->autoneg = priv->phydev->autoneg;

 if (priv->flow_ctrl & FLOW_RX)
  pause->rx_pause = 1;
 if (priv->flow_ctrl & FLOW_TX)
  pause->tx_pause = 1;

 spin_unlock(&priv->lock);
 return;
}
