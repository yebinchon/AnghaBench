
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct meth_private {int tx_count; } ;


 int TX_RING_ENTRIES ;
 struct meth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int meth_tx_full(struct net_device *dev)
{
 struct meth_private *priv = netdev_priv(dev);

 return (priv->tx_count >= TX_RING_ENTRIES - 1);
}
