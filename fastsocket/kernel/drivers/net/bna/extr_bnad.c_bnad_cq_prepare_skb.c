
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int protocol; int truesize; int data_len; int len; } ;
struct bnad_rx_unmap_q {int type; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_3__ vector; struct sk_buff* skb; int * page; int page_offset; } ;
struct bnad_rx_ctrl {int napi; struct bnad* bnad; } ;
struct bnad {int netdev; TYPE_1__* pcidev; } ;
struct TYPE_5__ {int nr_frags; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ BNAD_RXBUF_IS_PAGE (int ) ;
 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int dma_addr ;
 int dma_unmap_addr (TYPE_3__*,int ) ;
 int dma_unmap_page (int *,int ,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 struct sk_buff* napi_get_frags (int *) ;
 int skb_fill_page_desc (struct sk_buff*,int ,int *,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct sk_buff *
bnad_cq_prepare_skb(struct bnad_rx_ctrl *rx_ctrl,
  struct bnad_rx_unmap_q *unmap_q,
  struct bnad_rx_unmap *unmap,
  u32 length, u32 flags)
{
 struct bnad *bnad = rx_ctrl->bnad;
 struct sk_buff *skb;

 if (BNAD_RXBUF_IS_PAGE(unmap_q->type)) {
  skb = napi_get_frags(&rx_ctrl->napi);
  if (unlikely(!skb))
   return ((void*)0);

  dma_unmap_page(&bnad->pcidev->dev,
    dma_unmap_addr(&unmap->vector, dma_addr),
    unmap->vector.len, DMA_FROM_DEVICE);
  skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
    unmap->page, unmap->page_offset, length);
  skb->len += length;
  skb->data_len += length;
  skb->truesize += length;

  unmap->page = ((void*)0);
  unmap->vector.len = 0;

  return skb;
 }

 skb = unmap->skb;
 BUG_ON(!skb);

 dma_unmap_single(&bnad->pcidev->dev,
   dma_unmap_addr(&unmap->vector, dma_addr),
   unmap->vector.len, DMA_FROM_DEVICE);

 skb_put(skb, length);

 skb->protocol = eth_type_trans(skb, bnad->netdev);

 unmap->skb = ((void*)0);
 unmap->vector.len = 0;
 return skb;
}
