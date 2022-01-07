
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_6__ {int cntinfo; int pbuf; } ;
struct sgiseeq_tx_desc {TYPE_3__ tdma; struct sk_buff* skb; } ;
struct sgiseeq_private {int tx_new; int tx_old; int tx_lock; struct sgiseeq_tx_desc* tx_desc; struct hpc3_ethregs* hregs; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_4__ {int tx_bytes; } ;
struct net_device {int trans_start; TYPE_2__ dev; TYPE_1__ stats; } ;
struct hpc3_ethregs {int tx_ctrl; } ;


 int DMA_TO_DEVICE ;
 int ETH_ZLEN ;
 int HPC3_ETXCTRL_ACTIVE ;
 int HPCDMA_BCNT ;
 int HPCDMA_EOX ;
 int HPCDMA_EOXP ;
 int HPCDMA_XIE ;
 int HPCDMA_XIU ;
 int NETDEV_TX_OK ;
 int NEXT_TX (int) ;
 size_t PREV_TX (int) ;
 int TX_BUFFS_AVAIL (struct sgiseeq_private*) ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_sync_desc_cpu (struct net_device*,struct sgiseeq_tx_desc*) ;
 int dma_sync_desc_dev (struct net_device*,struct sgiseeq_tx_desc*) ;
 int jiffies ;
 int kick_tx (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ skb_padto (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sgiseeq_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 struct hpc3_ethregs *hregs = sp->hregs;
 unsigned long flags;
 struct sgiseeq_tx_desc *td;
 int len, entry;

 spin_lock_irqsave(&sp->tx_lock, flags);


 len = skb->len;
 if (len < ETH_ZLEN) {
  if (skb_padto(skb, ETH_ZLEN))
   return NETDEV_TX_OK;
  len = ETH_ZLEN;
 }

 dev->stats.tx_bytes += len;
 entry = sp->tx_new;
 td = &sp->tx_desc[entry];
 dma_sync_desc_cpu(dev, td);
 td->skb = skb;
 td->tdma.pbuf = dma_map_single(dev->dev.parent, skb->data,
           len, DMA_TO_DEVICE);
 td->tdma.cntinfo = (len & HPCDMA_BCNT) |
                    HPCDMA_XIU | HPCDMA_EOXP | HPCDMA_XIE | HPCDMA_EOX;
 dma_sync_desc_dev(dev, td);
 if (sp->tx_old != sp->tx_new) {
  struct sgiseeq_tx_desc *backend;

  backend = &sp->tx_desc[PREV_TX(sp->tx_new)];
  dma_sync_desc_cpu(dev, backend);
  backend->tdma.cntinfo &= ~HPCDMA_EOX;
  dma_sync_desc_dev(dev, backend);
 }
 sp->tx_new = NEXT_TX(sp->tx_new);


 if (!(hregs->tx_ctrl & HPC3_ETXCTRL_ACTIVE))
  kick_tx(dev, sp, hregs);

 dev->trans_start = jiffies;

 if (!TX_BUFFS_AVAIL(sp))
  netif_stop_queue(dev);
 spin_unlock_irqrestore(&sp->tx_lock, flags);

 return NETDEV_TX_OK;
}
