
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; void* data; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {int trans_start; int dev; TYPE_1__ stats; int name; } ;
struct fec_enet_private {size_t skb_cur; int tx_full; int hw_lock; struct bufdesc* cur_tx; struct bufdesc* dirty_tx; struct bufdesc* tx_bd_base; scalar_t__ hwp; struct sk_buff** tx_skbuff; void** tx_bounce; int link; } ;
struct bufdesc {unsigned short cbd_sc; int cbd_bufaddr; scalar_t__ cbd_datlen; } ;


 unsigned short BD_ENET_TX_INTR ;
 unsigned short BD_ENET_TX_LAST ;
 unsigned short BD_ENET_TX_READY ;
 unsigned short BD_ENET_TX_STATS ;
 unsigned short BD_ENET_TX_TC ;
 unsigned short BD_ENET_TX_WRAP ;
 int DMA_TO_DEVICE ;
 unsigned long FEC_ALIGNMENT ;
 int FEC_ENET_TX_FRSIZE ;
 scalar_t__ FEC_X_DES_ACTIVE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TX_RING_MOD_MASK ;
 int dma_map_single (int *,void*,int ,int ) ;
 int jiffies ;
 int memcpy (void*,void*,scalar_t__) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
fec_enet_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 struct bufdesc *bdp;
 void *bufaddr;
 unsigned short status;
 unsigned long flags;

 if (!fep->link) {

  return NETDEV_TX_BUSY;
 }

 spin_lock_irqsave(&fep->hw_lock, flags);

 bdp = fep->cur_tx;

 status = bdp->cbd_sc;

 if (status & BD_ENET_TX_READY) {



  printk("%s: tx queue full!.\n", dev->name);
  spin_unlock_irqrestore(&fep->hw_lock, flags);
  return NETDEV_TX_BUSY;
 }


 status &= ~BD_ENET_TX_STATS;


 bufaddr = skb->data;
 bdp->cbd_datlen = skb->len;






 if (((unsigned long) bufaddr) & FEC_ALIGNMENT) {
  unsigned int index;
  index = bdp - fep->tx_bd_base;
  memcpy(fep->tx_bounce[index], (void *)skb->data, skb->len);
  bufaddr = fep->tx_bounce[index];
 }


 fep->tx_skbuff[fep->skb_cur] = skb;

 dev->stats.tx_bytes += skb->len;
 fep->skb_cur = (fep->skb_cur+1) & TX_RING_MOD_MASK;




 bdp->cbd_bufaddr = dma_map_single(&dev->dev, bufaddr,
   FEC_ENET_TX_FRSIZE, DMA_TO_DEVICE);




 status |= (BD_ENET_TX_READY | BD_ENET_TX_INTR
   | BD_ENET_TX_LAST | BD_ENET_TX_TC);
 bdp->cbd_sc = status;

 dev->trans_start = jiffies;


 writel(0, fep->hwp + FEC_X_DES_ACTIVE);


 if (status & BD_ENET_TX_WRAP)
  bdp = fep->tx_bd_base;
 else
  bdp++;

 if (bdp == fep->dirty_tx) {
  fep->tx_full = 1;
  netif_stop_queue(dev);
 }

 fep->cur_tx = bdp;

 spin_unlock_irqrestore(&fep->hw_lock, flags);

 return NETDEV_TX_OK;
}
