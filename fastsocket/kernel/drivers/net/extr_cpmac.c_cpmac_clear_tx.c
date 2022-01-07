
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cpmac_priv {TYPE_1__* desc_ring; } ;
struct TYPE_2__ {int * skb; scalar_t__ dataflags; } ;


 int CPMAC_QUEUES ;
 int dev_kfree_skb_any (int *) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cpmac_clear_tx(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 int i;
 if (unlikely(!priv->desc_ring))
  return;
 for (i = 0; i < CPMAC_QUEUES; i++) {
  priv->desc_ring[i].dataflags = 0;
  if (priv->desc_ring[i].skb) {
   dev_kfree_skb_any(priv->desc_ring[i].skb);
   priv->desc_ring[i].skb = ((void*)0);
  }
 }
}
