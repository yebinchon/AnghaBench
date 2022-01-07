
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct emac_instance {TYPE_2__* rx_desc; int rx_sync_size; TYPE_1__* ofdev; struct sk_buff** rx_skb; int rx_skb_size; } ;
typedef int gfp_t ;
struct TYPE_4__ {int ctrl; scalar_t__ data_ptr; scalar_t__ data_len; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ EMAC_RX_SKB_HEADROOM ;
 int ENOMEM ;
 int MAL_RX_CTRL_EMPTY ;
 int MAL_RX_CTRL_WRAP ;
 int NUM_RX_BUFF ;
 struct sk_buff* alloc_skb (int ,int ) ;
 scalar_t__ dma_map_single (int *,scalar_t__,int ,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static inline int emac_alloc_rx_skb(struct emac_instance *dev, int slot,
        gfp_t flags)
{
 struct sk_buff *skb = alloc_skb(dev->rx_skb_size, flags);
 if (unlikely(!skb))
  return -ENOMEM;

 dev->rx_skb[slot] = skb;
 dev->rx_desc[slot].data_len = 0;

 skb_reserve(skb, EMAC_RX_SKB_HEADROOM + 2);
 dev->rx_desc[slot].data_ptr =
     dma_map_single(&dev->ofdev->dev, skb->data - 2, dev->rx_sync_size,
      DMA_FROM_DEVICE) + 2;
 wmb();
 dev->rx_desc[slot].ctrl = MAL_RX_CTRL_EMPTY |
     (slot == (NUM_RX_BUFF - 1) ? MAL_RX_CTRL_WRAP : 0);

 return 0;
}
