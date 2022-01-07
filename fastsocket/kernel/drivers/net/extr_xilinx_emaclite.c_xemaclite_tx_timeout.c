
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_local {int reset_lock; int * deferred_skb; TYPE_1__* ndev; } ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {int trans_start; TYPE_2__ stats; } ;
struct TYPE_3__ {int dev; } ;


 unsigned long HZ ;
 unsigned long TX_TIMEOUT ;
 int dev_err (int *,char*,unsigned long) ;
 int dev_kfree_skb (int *) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xemaclite_disable_interrupts (struct net_local*) ;
 int xemaclite_enable_interrupts (struct net_local*) ;

__attribute__((used)) static void xemaclite_tx_timeout(struct net_device *dev)
{
 struct net_local *lp = (struct net_local *) netdev_priv(dev);
 unsigned long flags;

 dev_err(&lp->ndev->dev, "Exceeded transmit timeout of %lu ms\n",
  TX_TIMEOUT * 1000UL / HZ);

 dev->stats.tx_errors++;


 spin_lock_irqsave(&lp->reset_lock, flags);


 netif_stop_queue(dev);

 xemaclite_disable_interrupts(lp);
 xemaclite_enable_interrupts(lp);

 if (lp->deferred_skb) {
  dev_kfree_skb(lp->deferred_skb);
  lp->deferred_skb = ((void*)0);
  dev->stats.tx_errors++;
 }


 dev->trans_start = 0xffffffff - TX_TIMEOUT - TX_TIMEOUT;


 netif_wake_queue(dev);
 spin_unlock_irqrestore(&lp->reset_lock, flags);
}
