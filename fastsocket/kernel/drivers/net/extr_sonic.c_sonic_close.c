
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int ** rx_skb; void** rx_laddr; int device; int ** tx_skb; void** tx_laddr; int * tx_len; } ;
struct net_device {int dummy; } ;
typedef void* dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int SONIC_CMD ;
 int SONIC_CR_RST ;
 int SONIC_IMR ;
 int SONIC_ISR ;
 int SONIC_NUM_RRS ;
 int SONIC_NUM_TDS ;
 int SONIC_RBSIZE ;
 int SONIC_WRITE (int ,int) ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int ,void*,int ,int ) ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*) ;
 int sonic_debug ;

__attribute__((used)) static int sonic_close(struct net_device *dev)
{
 struct sonic_local *lp = netdev_priv(dev);
 int i;

 if (sonic_debug > 2)
  printk("sonic_close\n");

 netif_stop_queue(dev);




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


 for (i = 0; i < SONIC_NUM_RRS; i++) {
  if(lp->rx_laddr[i]) {
   dma_unmap_single(lp->device, lp->rx_laddr[i], SONIC_RBSIZE, DMA_FROM_DEVICE);
   lp->rx_laddr[i] = (dma_addr_t)0;
  }
  if(lp->rx_skb[i]) {
   dev_kfree_skb(lp->rx_skb[i]);
   lp->rx_skb[i] = ((void*)0);
  }
 }

 return 0;
}
