
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct bcm_enet_priv {int pause_tx; int pause_rx; int pause_auto; } ;


 struct bcm_enet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_enet_get_pauseparam(struct net_device *dev,
        struct ethtool_pauseparam *ecmd)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);
 ecmd->autoneg = priv->pause_auto;
 ecmd->rx_pause = priv->pause_rx;
 ecmd->tx_pause = priv->pause_tx;
}
