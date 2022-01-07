
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct dbdma_cmd {int xfer_status; } ;
struct bmac_data {size_t tx_empty; size_t tx_fill; int lock; scalar_t__ tx_fullup; int ** tx_bufs; TYPE_1__* tx_dma; struct dbdma_cmd* tx_cmds; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int cmdptr; } ;


 int ACTIVE ;
 int IRQ_HANDLED ;
 size_t N_TX_RING ;
 int XXDEBUG (char*) ;
 int bmac_start (struct net_device*) ;
 struct dbdma_cmd volatile* bus_to_virt (int ) ;
 int dev_kfree_skb_irq (int *) ;
 int in_le32 (int *) ;
 int ld_le16 (int *) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int txintcount ;

__attribute__((used)) static irqreturn_t bmac_txdma_intr(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 struct bmac_data *bp = netdev_priv(dev);
 volatile struct dbdma_cmd *cp;
 int stat;
 unsigned long flags;

 spin_lock_irqsave(&bp->lock, flags);

 if (txintcount++ < 10) {
  XXDEBUG(("bmac_txdma_intr\n"));
 }




 while (1) {
  cp = &bp->tx_cmds[bp->tx_empty];
  stat = ld_le16(&cp->xfer_status);
  if (txintcount < 10) {
   XXDEBUG(("bmac_txdma_xfer_stat=%#0x\n", stat));
  }
  if (!(stat & ACTIVE)) {



   if (cp == bus_to_virt(in_le32(&bp->tx_dma->cmdptr)))
    break;
  }

  if (bp->tx_bufs[bp->tx_empty]) {
   ++dev->stats.tx_packets;
   dev_kfree_skb_irq(bp->tx_bufs[bp->tx_empty]);
  }
  bp->tx_bufs[bp->tx_empty] = ((void*)0);
  bp->tx_fullup = 0;
  netif_wake_queue(dev);
  if (++bp->tx_empty >= N_TX_RING)
   bp->tx_empty = 0;
  if (bp->tx_empty == bp->tx_fill)
   break;
 }

 spin_unlock_irqrestore(&bp->lock, flags);

 if (txintcount < 10) {
  XXDEBUG(("bmac_txdma_intr done->bmac_start\n"));
 }

 bmac_start(dev);
 return IRQ_HANDLED;
}
