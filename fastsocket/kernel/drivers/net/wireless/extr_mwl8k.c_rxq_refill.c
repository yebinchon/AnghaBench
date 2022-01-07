
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct mwl8k_rx_queue {scalar_t__ rxd_count; scalar_t__ tail; void* rxd; TYPE_2__* buf; } ;
struct mwl8k_priv {TYPE_1__* rxd_ops; int pdev; struct mwl8k_rx_queue* rxq; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct sk_buff* skb; } ;
struct TYPE_3__ {int rxd_size; int (* rxd_refill ) (void*,int ,int ) ;} ;


 int DMA_FROM_DEVICE ;
 scalar_t__ MWL8K_RX_DESCS ;
 int MWL8K_RX_MAXSZ ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dma ;
 int dma_unmap_addr_set (TYPE_2__*,int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int stub1 (void*,int ,int ) ;

__attribute__((used)) static int rxq_refill(struct ieee80211_hw *hw, int index, int limit)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_rx_queue *rxq = priv->rxq + index;
 int refilled;

 refilled = 0;
 while (rxq->rxd_count < MWL8K_RX_DESCS && limit--) {
  struct sk_buff *skb;
  dma_addr_t addr;
  int rx;
  void *rxd;

  skb = dev_alloc_skb(MWL8K_RX_MAXSZ);
  if (skb == ((void*)0))
   break;

  addr = pci_map_single(priv->pdev, skb->data,
          MWL8K_RX_MAXSZ, DMA_FROM_DEVICE);

  rxq->rxd_count++;
  rx = rxq->tail++;
  if (rxq->tail == MWL8K_RX_DESCS)
   rxq->tail = 0;
  rxq->buf[rx].skb = skb;
  dma_unmap_addr_set(&rxq->buf[rx], dma, addr);

  rxd = rxq->rxd + (rx * priv->rxd_ops->rxd_size);
  priv->rxd_ops->rxd_refill(rxd, addr, MWL8K_RX_MAXSZ);

  refilled++;
 }

 return refilled;
}
