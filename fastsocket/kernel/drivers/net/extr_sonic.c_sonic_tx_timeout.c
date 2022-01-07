
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct sonic_local {TYPE_1__ stats; int ** tx_skb; scalar_t__* tx_laddr; int * tx_len; int device; } ;
struct net_device {int trans_start; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int SONIC_CMD ;
 int SONIC_CR_RST ;
 int SONIC_IMR ;
 int SONIC_ISR ;
 int SONIC_NUM_TDS ;
 int SONIC_WRITE (int ,int) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int jiffies ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sonic_init (struct net_device*) ;

__attribute__((used)) static void sonic_tx_timeout(struct net_device *dev)
{
 struct sonic_local *lp = netdev_priv(dev);
 int i;




 SONIC_WRITE(SONIC_IMR, 0);
 SONIC_WRITE(SONIC_ISR, 0x7fff);
 SONIC_WRITE(SONIC_CMD, SONIC_CR_RST);

 for (i = 0; i < SONIC_NUM_TDS; i++) {
  if(lp->tx_laddr[i]) {
   dma_unmap_single(lp->device, lp->tx_laddr[i], lp->tx_len[i], DMA_TO_DEVICE);
   lp->tx_laddr[i] = (dma_addr_t)0;
  }
  if(lp->tx_skb[i]) {
   dev_kfree_skb(lp->tx_skb[i]);
   lp->tx_skb[i] = ((void*)0);
  }
 }

 sonic_init(dev);
 lp->stats.tx_errors++;
 dev->trans_start = jiffies;
 netif_wake_queue(dev);
}
