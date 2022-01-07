
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct ipoib_tx_buf {int * mapping; struct sk_buff* skb; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_page (struct ib_device*,int ,int ,int ) ;
 int ib_dma_unmap_single (struct ib_device*,int ,scalar_t__,int ) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ipoib_dma_unmap_tx(struct ib_device *ca,
          struct ipoib_tx_buf *tx_req)
{
 struct sk_buff *skb = tx_req->skb;
 u64 *mapping = tx_req->mapping;
 int i;
 int off;

 if (skb_headlen(skb)) {
  ib_dma_unmap_single(ca, mapping[0], skb_headlen(skb), DMA_TO_DEVICE);
  off = 1;
 } else
  off = 0;

 for (i = 0; i < skb_shinfo(skb)->nr_frags; ++i) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  ib_dma_unmap_page(ca, mapping[i + off], frag->size,
      DMA_TO_DEVICE);
 }
}
