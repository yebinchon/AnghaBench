
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {scalar_t__ pause; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;


 int EINVAL ;
 int myri10ge_change_pause (struct myri10ge_priv*,scalar_t__) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
myri10ge_set_pauseparam(struct net_device *netdev,
   struct ethtool_pauseparam *pause)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);

 if (pause->tx_pause != mgp->pause)
  return myri10ge_change_pause(mgp, pause->tx_pause);
 if (pause->rx_pause != mgp->pause)
  return myri10ge_change_pause(mgp, pause->tx_pause);
 if (pause->autoneg != 0)
  return -EINVAL;
 return 0;
}
