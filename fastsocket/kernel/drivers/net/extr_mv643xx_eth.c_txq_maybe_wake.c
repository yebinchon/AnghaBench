
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_queue {scalar_t__ tx_ring_size; scalar_t__ tx_desc_count; int index; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {int dev; } ;


 scalar_t__ MAX_SKB_FRAGS ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int smp_processor_id () ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;

__attribute__((used)) static void txq_maybe_wake(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 struct netdev_queue *nq = netdev_get_tx_queue(mp->dev, txq->index);

 if (netif_tx_queue_stopped(nq)) {
  __netif_tx_lock(nq, smp_processor_id());
  if (txq->tx_ring_size - txq->tx_desc_count >= MAX_SKB_FRAGS + 1)
   netif_tx_wake_queue(nq);
  __netif_tx_unlock(nq);
 }
}
