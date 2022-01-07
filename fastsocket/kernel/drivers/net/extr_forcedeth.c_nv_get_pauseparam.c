
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int pause_flags; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;


 int NV_PAUSEFRAME_AUTONEG ;
 int NV_PAUSEFRAME_RX_ENABLE ;
 int NV_PAUSEFRAME_TX_ENABLE ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nv_get_pauseparam(struct net_device *dev, struct ethtool_pauseparam* pause)
{
 struct fe_priv *np = netdev_priv(dev);

 pause->autoneg = (np->pause_flags & NV_PAUSEFRAME_AUTONEG) != 0;
 pause->rx_pause = (np->pause_flags & NV_PAUSEFRAME_RX_ENABLE) != 0;
 pause->tx_pause = (np->pause_flags & NV_PAUSEFRAME_TX_ENABLE) != 0;
}
