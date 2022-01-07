
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int collisions; int tx_packets; int tx_carrier_errors; int tx_fifo_errors; int tx_aborted_errors; int tx_window_errors; int tx_heartbeat_errors; int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;
struct fec_enet_private {scalar_t__ tx_full; size_t skb_dirty; int hw_lock; struct bufdesc* dirty_tx; struct bufdesc* tx_bd_base; struct sk_buff** tx_skbuff; struct bufdesc* cur_tx; } ;
struct bufdesc {unsigned short cbd_sc; scalar_t__ cbd_bufaddr; } ;


 unsigned short BD_ENET_TX_CSL ;
 unsigned short BD_ENET_TX_DEF ;
 unsigned short BD_ENET_TX_HB ;
 unsigned short BD_ENET_TX_LC ;
 unsigned short BD_ENET_TX_READY ;
 unsigned short BD_ENET_TX_RL ;
 unsigned short BD_ENET_TX_UN ;
 unsigned short BD_ENET_TX_WRAP ;
 int DMA_TO_DEVICE ;
 int FEC_ENET_TX_FRSIZE ;
 int TX_RING_MOD_MASK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
fec_enet_tx(struct net_device *dev)
{
 struct fec_enet_private *fep;
 struct bufdesc *bdp;
 unsigned short status;
 struct sk_buff *skb;

 fep = netdev_priv(dev);
 spin_lock(&fep->hw_lock);
 bdp = fep->dirty_tx;

 while (((status = bdp->cbd_sc) & BD_ENET_TX_READY) == 0) {
  if (bdp == fep->cur_tx && fep->tx_full == 0)
   break;

  dma_unmap_single(&dev->dev, bdp->cbd_bufaddr, FEC_ENET_TX_FRSIZE, DMA_TO_DEVICE);
  bdp->cbd_bufaddr = 0;

  skb = fep->tx_skbuff[fep->skb_dirty];

  if (status & (BD_ENET_TX_HB | BD_ENET_TX_LC |
       BD_ENET_TX_RL | BD_ENET_TX_UN |
       BD_ENET_TX_CSL)) {
   dev->stats.tx_errors++;
   if (status & BD_ENET_TX_HB)
    dev->stats.tx_heartbeat_errors++;
   if (status & BD_ENET_TX_LC)
    dev->stats.tx_window_errors++;
   if (status & BD_ENET_TX_RL)
    dev->stats.tx_aborted_errors++;
   if (status & BD_ENET_TX_UN)
    dev->stats.tx_fifo_errors++;
   if (status & BD_ENET_TX_CSL)
    dev->stats.tx_carrier_errors++;
  } else {
   dev->stats.tx_packets++;
  }

  if (status & BD_ENET_TX_READY)
   printk("HEY! Enet xmit interrupt and TX_READY.\n");




  if (status & BD_ENET_TX_DEF)
   dev->stats.collisions++;


  dev_kfree_skb_any(skb);
  fep->tx_skbuff[fep->skb_dirty] = ((void*)0);
  fep->skb_dirty = (fep->skb_dirty + 1) & TX_RING_MOD_MASK;


  if (status & BD_ENET_TX_WRAP)
   bdp = fep->tx_bd_base;
  else
   bdp++;



  if (fep->tx_full) {
   fep->tx_full = 0;
   if (netif_queue_stopped(dev))
    netif_wake_queue(dev);
  }
 }
 fep->dirty_tx = bdp;
 spin_unlock(&fep->hw_lock);
}
