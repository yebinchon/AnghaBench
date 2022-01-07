
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {int dty_tx; int cur_tx; unsigned int num_tx; int lock; } ;


 int INT_MASK_TX ;
 int TX_BD_READY ;
 int ethoc_ack_irq (struct ethoc*,int ) ;
 int ethoc_read_bd (struct ethoc*,unsigned int,struct ethoc_bd*) ;
 int ethoc_update_tx_stats (struct ethoc*,struct ethoc_bd*) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ethoc_tx(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);

 spin_lock(&priv->lock);

 while (priv->dty_tx != priv->cur_tx) {
  unsigned int entry = priv->dty_tx % priv->num_tx;
  struct ethoc_bd bd;

  ethoc_read_bd(priv, entry, &bd);
  if (bd.stat & TX_BD_READY)
   break;

  entry = (++priv->dty_tx) % priv->num_tx;
  (void)ethoc_update_tx_stats(priv, &bd);
 }

 if ((priv->cur_tx - priv->dty_tx) <= (priv->num_tx / 2))
  netif_wake_queue(dev);

 ethoc_ack_irq(priv, INT_MASK_TX);
 spin_unlock(&priv->lock);
}
