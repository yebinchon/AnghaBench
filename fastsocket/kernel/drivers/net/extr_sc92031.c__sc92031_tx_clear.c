
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc92031_priv {scalar_t__ tx_head; scalar_t__ tx_tail; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 struct sc92031_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void _sc92031_tx_clear(struct net_device *dev)
{
 struct sc92031_priv *priv = netdev_priv(dev);

 while (priv->tx_head - priv->tx_tail > 0) {
  priv->tx_tail++;
  dev->stats.tx_dropped++;
 }
 priv->tx_head = priv->tx_tail = 0;
}
