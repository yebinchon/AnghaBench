
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_dmaring {int nr_slots; int rx_buffersize; scalar_t__ tx; int used_slots; } ;
struct b43legacy_dmadesc_meta {int dmaaddr; TYPE_1__* skb; } ;
struct TYPE_2__ {int len; } ;


 int B43legacy_WARN_ON (int) ;
 int free_descriptor_buffer (struct b43legacy_dmaring*,struct b43legacy_dmadesc_meta*,int ) ;
 int op32_idx2desc (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ;
 int unmap_descbuffer (struct b43legacy_dmaring*,int ,int ,int) ;

__attribute__((used)) static void free_all_descbuffers(struct b43legacy_dmaring *ring)
{
 struct b43legacy_dmadesc_meta *meta;
 int i;

 if (!ring->used_slots)
  return;
 for (i = 0; i < ring->nr_slots; i++) {
  op32_idx2desc(ring, i, &meta);

  if (!meta->skb) {
   B43legacy_WARN_ON(!ring->tx);
   continue;
  }
  if (ring->tx)
   unmap_descbuffer(ring, meta->dmaaddr,
      meta->skb->len, 1);
  else
   unmap_descbuffer(ring, meta->dmaaddr,
      ring->rx_buffersize, 0);
  free_descriptor_buffer(ring, meta, 0);
 }
}
