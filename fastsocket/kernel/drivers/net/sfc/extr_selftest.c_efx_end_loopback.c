
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct efx_tx_queue {size_t queue; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; struct efx_loopback_state* loopback_selftest; } ;
struct efx_loopback_state {int packet_count; int rx_bad; int rx_good; struct sk_buff** skbs; } ;
struct efx_loopback_self_tests {int* tx_sent; int* tx_done; int rx_good; int rx_bad; } ;


 int ETIMEDOUT ;
 int LOOPBACK_MODE (struct efx_nic*) ;
 int atomic_read (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int drv ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,size_t,int,int,int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*,size_t,int,int,int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int skb_shared (struct sk_buff*) ;

__attribute__((used)) static int efx_end_loopback(struct efx_tx_queue *tx_queue,
       struct efx_loopback_self_tests *lb_tests)
{
 struct efx_nic *efx = tx_queue->efx;
 struct efx_loopback_state *state = efx->loopback_selftest;
 struct sk_buff *skb;
 int tx_done = 0, rx_good, rx_bad;
 int i, rc = 0;

 netif_tx_lock_bh(efx->net_dev);



 for (i = 0; i < state->packet_count; i++) {
  skb = state->skbs[i];
  if (skb && !skb_shared(skb))
   ++tx_done;
  dev_kfree_skb(skb);
 }

 netif_tx_unlock_bh(efx->net_dev);


 rx_good = atomic_read(&state->rx_good);
 rx_bad = atomic_read(&state->rx_bad);
 if (tx_done != state->packet_count) {



  netif_err(efx, drv, efx->net_dev,
     "TX queue %d saw only %d out of an expected %d "
     "TX completion events in %s loopback test\n",
     tx_queue->queue, tx_done, state->packet_count,
     LOOPBACK_MODE(efx));
  rc = -ETIMEDOUT;

 }


 if (rx_good != state->packet_count) {
  netif_dbg(efx, drv, efx->net_dev,
     "TX queue %d saw only %d out of an expected %d "
     "received packets in %s loopback test\n",
     tx_queue->queue, rx_good, state->packet_count,
     LOOPBACK_MODE(efx));
  rc = -ETIMEDOUT;

 }


 lb_tests->tx_sent[tx_queue->queue] += state->packet_count;
 lb_tests->tx_done[tx_queue->queue] += tx_done;
 lb_tests->rx_good += rx_good;
 lb_tests->rx_bad += rx_bad;

 return rc;
}
