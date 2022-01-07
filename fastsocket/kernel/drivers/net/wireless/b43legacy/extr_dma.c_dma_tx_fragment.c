
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {unsigned char* data; int len; unsigned char* cb; int dev; } ;
struct ieee80211_tx_info {int dummy; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_dmaring {int current_slot; int used_slots; int dev; int * txhdr_cache; } ;
struct b43legacy_dmadesc_meta {int is_last_fragment; void* dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 int B43legacy_WARN_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 struct sk_buff* alloc_skb (int,int) ;
 scalar_t__ b43legacy_dma_mapping_error (struct b43legacy_dmaring*,void*,int,int) ;
 int b43legacy_generate_txhdr (int ,int *,unsigned char*,int,struct ieee80211_tx_info*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int generate_cookie (struct b43legacy_dmaring*,int) ;
 void* map_descbuffer (struct b43legacy_dmaring*,unsigned char*,int,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (struct b43legacy_dmadesc_meta*,int ,int) ;
 int next_slot (struct b43legacy_dmaring*,int) ;
 int op32_fill_descriptor (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,void*,int,int,int,int) ;
 struct b43legacy_dmadesc32* op32_idx2desc (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ;
 int op32_poke_tx (struct b43legacy_dmaring*,int ) ;
 int request_slot (struct b43legacy_dmaring*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int unmap_descbuffer (struct b43legacy_dmaring*,void*,int,int) ;
 int wmb () ;

__attribute__((used)) static int dma_tx_fragment(struct b43legacy_dmaring *ring,
       struct sk_buff **in_skb)
{
 struct sk_buff *skb = *in_skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 u8 *header;
 int slot, old_top_slot, old_used_slots;
 int err;
 struct b43legacy_dmadesc32 *desc;
 struct b43legacy_dmadesc_meta *meta;
 struct b43legacy_dmadesc_meta *meta_hdr;
 struct sk_buff *bounce_skb;


 B43legacy_WARN_ON(skb_shinfo(skb)->nr_frags != 0);

 old_top_slot = ring->current_slot;
 old_used_slots = ring->used_slots;


 slot = request_slot(ring);
 desc = op32_idx2desc(ring, slot, &meta_hdr);
 memset(meta_hdr, 0, sizeof(*meta_hdr));

 header = &(ring->txhdr_cache[slot * sizeof(
          struct b43legacy_txhdr_fw3)]);
 err = b43legacy_generate_txhdr(ring->dev, header,
     skb->data, skb->len, info,
     generate_cookie(ring, slot));
 if (unlikely(err)) {
  ring->current_slot = old_top_slot;
  ring->used_slots = old_used_slots;
  return err;
 }

 meta_hdr->dmaaddr = map_descbuffer(ring, (unsigned char *)header,
        sizeof(struct b43legacy_txhdr_fw3), 1);
 if (b43legacy_dma_mapping_error(ring, meta_hdr->dmaaddr,
     sizeof(struct b43legacy_txhdr_fw3), 1)) {
  ring->current_slot = old_top_slot;
  ring->used_slots = old_used_slots;
  return -EIO;
 }
 op32_fill_descriptor(ring, desc, meta_hdr->dmaaddr,
        sizeof(struct b43legacy_txhdr_fw3), 1, 0, 0);


 slot = request_slot(ring);
 desc = op32_idx2desc(ring, slot, &meta);
 memset(meta, 0, sizeof(*meta));

 meta->skb = skb;
 meta->is_last_fragment = 1;

 meta->dmaaddr = map_descbuffer(ring, skb->data, skb->len, 1);

 if (b43legacy_dma_mapping_error(ring, meta->dmaaddr, skb->len, 1)) {
  bounce_skb = alloc_skb(skb->len, GFP_ATOMIC | GFP_DMA);
  if (!bounce_skb) {
   ring->current_slot = old_top_slot;
   ring->used_slots = old_used_slots;
   err = -ENOMEM;
   goto out_unmap_hdr;
  }

  memcpy(skb_put(bounce_skb, skb->len), skb->data, skb->len);
  memcpy(bounce_skb->cb, skb->cb, sizeof(skb->cb));
  bounce_skb->dev = skb->dev;
  skb_set_queue_mapping(bounce_skb, skb_get_queue_mapping(skb));
  info = IEEE80211_SKB_CB(bounce_skb);

  dev_kfree_skb_any(skb);
  skb = bounce_skb;
  *in_skb = bounce_skb;
  meta->skb = skb;
  meta->dmaaddr = map_descbuffer(ring, skb->data, skb->len, 1);
  if (b43legacy_dma_mapping_error(ring, meta->dmaaddr, skb->len, 1)) {
   ring->current_slot = old_top_slot;
   ring->used_slots = old_used_slots;
   err = -EIO;
   goto out_free_bounce;
  }
 }

 op32_fill_descriptor(ring, desc, meta->dmaaddr,
        skb->len, 0, 1, 1);

 wmb();

 op32_poke_tx(ring, next_slot(ring, slot));
 return 0;

out_free_bounce:
 dev_kfree_skb_any(skb);
out_unmap_hdr:
 unmap_descbuffer(ring, meta_hdr->dmaaddr,
    sizeof(struct b43legacy_txhdr_fw3), 1);
 return err;
}
