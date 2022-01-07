
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct veth_priv {TYPE_1__* peer; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void veth_get_ethtool_stats(struct net_device *dev,
  struct ethtool_stats *stats, u64 *data)
{
 struct veth_priv *priv;

 priv = netdev_priv(dev);
 data[0] = priv->peer->ifindex;
}
