
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {int pause; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; scalar_t__ autoneg; } ;


 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
myri10ge_get_pauseparam(struct net_device *netdev,
   struct ethtool_pauseparam *pause)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);

 pause->autoneg = 0;
 pause->rx_pause = mgp->pause;
 pause->tx_pause = mgp->pause;
}
