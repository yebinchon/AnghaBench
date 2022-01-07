
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct b43legacy_rxhdr_fw3 {scalar_t__ frame_len; } ;
struct b43legacy_hwtxstatus {scalar_t__ cookie; } ;
struct b43legacy_dmaring {int rx_buffersize; int tx; } ;
struct b43legacy_dmadesc_meta {int dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int B43legacy_WARN_ON (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 scalar_t__ b43legacy_dma_mapping_error (struct b43legacy_dmaring*,int ,int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int map_descbuffer (struct b43legacy_dmaring*,scalar_t__,int ,int ) ;
 int op32_fill_descriptor (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,int ,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int setup_rx_descbuffer(struct b43legacy_dmaring *ring,
          struct b43legacy_dmadesc32 *desc,
          struct b43legacy_dmadesc_meta *meta,
          gfp_t gfp_flags)
{
 struct b43legacy_rxhdr_fw3 *rxhdr;
 struct b43legacy_hwtxstatus *txstat;
 dma_addr_t dmaaddr;
 struct sk_buff *skb;

 B43legacy_WARN_ON(ring->tx);

 skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);
 if (unlikely(!skb))
  return -ENOMEM;
 dmaaddr = map_descbuffer(ring, skb->data,
     ring->rx_buffersize, 0);
 if (b43legacy_dma_mapping_error(ring, dmaaddr, ring->rx_buffersize, 0)) {

  gfp_flags |= GFP_DMA;

  dev_kfree_skb_any(skb);

  skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);
  if (unlikely(!skb))
   return -ENOMEM;
  dmaaddr = map_descbuffer(ring, skb->data,
      ring->rx_buffersize, 0);
 }

 if (b43legacy_dma_mapping_error(ring, dmaaddr, ring->rx_buffersize, 0)) {
  dev_kfree_skb_any(skb);
  return -EIO;
 }

 meta->skb = skb;
 meta->dmaaddr = dmaaddr;
 op32_fill_descriptor(ring, desc, dmaaddr, ring->rx_buffersize, 0, 0, 0);

 rxhdr = (struct b43legacy_rxhdr_fw3 *)(skb->data);
 rxhdr->frame_len = 0;
 txstat = (struct b43legacy_hwtxstatus *)(skb->data);
 txstat->cookie = 0;

 return 0;
}
