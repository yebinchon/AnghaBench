
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct b43legacy_rxhdr_fw3 {int frame_len; } ;
struct b43legacy_hwtxstatus {scalar_t__ cookie; } ;
struct b43legacy_dmaring {scalar_t__ rx_buffersize; int index; scalar_t__ frameoffset; TYPE_1__* dev; } ;
struct b43legacy_dmadesc_meta {int dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
typedef scalar_t__ s32 ;
typedef int dma_addr_t ;
struct TYPE_3__ {int wl; } ;


 int GFP_ATOMIC ;
 int b43legacy_handle_hwtxstatus (TYPE_1__*,struct b43legacy_hwtxstatus*) ;
 int b43legacy_rx (TYPE_1__*,struct sk_buff*,struct b43legacy_rxhdr_fw3*) ;
 int b43legacydbg (int ,char*) ;
 int b43legacyerr (int ,char*,scalar_t__,scalar_t__,int) ;
 int barrier () ;
 scalar_t__ le16_to_cpu (int ) ;
 int next_slot (struct b43legacy_dmaring*,int) ;
 struct b43legacy_dmadesc32* op32_idx2desc (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ;
 int setup_rx_descbuffer (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,struct b43legacy_dmadesc_meta*,int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int sync_descbuffer_for_cpu (struct b43legacy_dmaring*,int ,scalar_t__) ;
 int sync_descbuffer_for_device (struct b43legacy_dmaring*,int ,scalar_t__) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int unmap_descbuffer (struct b43legacy_dmaring*,int ,scalar_t__,int ) ;

__attribute__((used)) static void dma_rx(struct b43legacy_dmaring *ring,
     int *slot)
{
 struct b43legacy_dmadesc32 *desc;
 struct b43legacy_dmadesc_meta *meta;
 struct b43legacy_rxhdr_fw3 *rxhdr;
 struct sk_buff *skb;
 u16 len;
 int err;
 dma_addr_t dmaaddr;

 desc = op32_idx2desc(ring, *slot, &meta);

 sync_descbuffer_for_cpu(ring, meta->dmaaddr, ring->rx_buffersize);
 skb = meta->skb;

 if (ring->index == 3) {

  struct b43legacy_hwtxstatus *hw =
    (struct b43legacy_hwtxstatus *)skb->data;
  int i = 0;

  while (hw->cookie == 0) {
   if (i > 100)
    break;
   i++;
   udelay(2);
   barrier();
  }
  b43legacy_handle_hwtxstatus(ring->dev, hw);

  sync_descbuffer_for_device(ring, meta->dmaaddr,
        ring->rx_buffersize);

  return;
 }
 rxhdr = (struct b43legacy_rxhdr_fw3 *)skb->data;
 len = le16_to_cpu(rxhdr->frame_len);
 if (len == 0) {
  int i = 0;

  do {
   udelay(2);
   barrier();
   len = le16_to_cpu(rxhdr->frame_len);
  } while (len == 0 && i++ < 5);
  if (unlikely(len == 0)) {

   sync_descbuffer_for_device(ring, meta->dmaaddr,
         ring->rx_buffersize);
   goto drop;
  }
 }
 if (unlikely(len > ring->rx_buffersize)) {





  int cnt = 0;
  s32 tmp = len;

  while (1) {
   desc = op32_idx2desc(ring, *slot, &meta);

   sync_descbuffer_for_device(ring, meta->dmaaddr,
         ring->rx_buffersize);
   *slot = next_slot(ring, *slot);
   cnt++;
   tmp -= ring->rx_buffersize;
   if (tmp <= 0)
    break;
  }
  b43legacyerr(ring->dev->wl, "DMA RX buffer too small "
         "(len: %u, buffer: %u, nr-dropped: %d)\n",
         len, ring->rx_buffersize, cnt);
  goto drop;
 }

 dmaaddr = meta->dmaaddr;
 err = setup_rx_descbuffer(ring, desc, meta, GFP_ATOMIC);
 if (unlikely(err)) {
  b43legacydbg(ring->dev->wl, "DMA RX: setup_rx_descbuffer()"
        " failed\n");
  sync_descbuffer_for_device(ring, dmaaddr,
        ring->rx_buffersize);
  goto drop;
 }

 unmap_descbuffer(ring, dmaaddr, ring->rx_buffersize, 0);
 skb_put(skb, len + ring->frameoffset);
 skb_pull(skb, ring->frameoffset);

 b43legacy_rx(ring->dev, skb, rxhdr);
drop:
 return;
}
