
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buff_stat; scalar_t__ len; int status; } ;
typedef TYPE_1__ tx_dma_t ;
struct net_device {int dummy; } ;
struct au1000_private {size_t tx_tail; scalar_t__ tx_full; TYPE_1__** tx_dma_ring; } ;


 int NUM_TX_DMA ;
 int TX_T_DONE ;
 int au_sync () ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int update_tx_stats (struct net_device*,int ) ;

__attribute__((used)) static void au1000_tx_ack(struct net_device *dev)
{
 struct au1000_private *aup = netdev_priv(dev);
 volatile tx_dma_t *ptxd;

 ptxd = aup->tx_dma_ring[aup->tx_tail];

 while (ptxd->buff_stat & TX_T_DONE) {
  update_tx_stats(dev, ptxd->status);
  ptxd->buff_stat &= ~TX_T_DONE;
  ptxd->len = 0;
  au_sync();

  aup->tx_tail = (aup->tx_tail + 1) & (NUM_TX_DMA - 1);
  ptxd = aup->tx_dma_ring[aup->tx_tail];

  if (aup->tx_full) {
   aup->tx_full = 0;
   netif_wake_queue(dev);
  }
 }
}
