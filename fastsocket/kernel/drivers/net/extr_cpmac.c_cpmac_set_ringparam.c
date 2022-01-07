
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; } ;
struct cpmac_priv {int ring_size; } ;


 int EBUSY ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int cpmac_set_ringparam(struct net_device *dev, struct ethtool_ringparam* ring)
{
 struct cpmac_priv *priv = netdev_priv(dev);

 if (netif_running(dev))
  return -EBUSY;
 priv->ring_size = ring->rx_pending;
 return 0;
}
