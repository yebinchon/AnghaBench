
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; } ;
struct ring_info {struct sk_buff* skb; int mapping; } ;
struct dma_desc {int dummy; } ;
struct b44 {int tx_cons; int dev; TYPE_1__* sdev; struct ring_info* tx_buffers; } ;
struct TYPE_2__ {int dma_dev; } ;


 int B44_DMATX_STAT ;
 int B44_GPTIMER ;
 scalar_t__ B44_TX_WAKEUP_THRESH ;
 int BUG_ON (int ) ;
 int DMATX_STAT_CDMASK ;
 int DMA_TO_DEVICE ;
 int NEXT_TX (int) ;
 scalar_t__ TX_BUFFS_AVAIL (struct b44*) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int ) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void b44_tx(struct b44 *bp)
{
 u32 cur, cons;

 cur = br32(bp, B44_DMATX_STAT) & DMATX_STAT_CDMASK;
 cur /= sizeof(struct dma_desc);


 for (cons = bp->tx_cons; cons != cur; cons = NEXT_TX(cons)) {
  struct ring_info *rp = &bp->tx_buffers[cons];
  struct sk_buff *skb = rp->skb;

  BUG_ON(skb == ((void*)0));

  dma_unmap_single(bp->sdev->dma_dev,
     rp->mapping,
     skb->len,
     DMA_TO_DEVICE);
  rp->skb = ((void*)0);
  dev_kfree_skb_irq(skb);
 }

 bp->tx_cons = cons;
 if (netif_queue_stopped(bp->dev) &&
     TX_BUFFS_AVAIL(bp) > B44_TX_WAKEUP_THRESH)
  netif_wake_queue(bp->dev);

 bw32(bp, B44_GPTIMER, 0);
}
