
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_dmaring {struct b43legacy_dmaring* meta; struct b43legacy_dmaring* txhdr_cache; int nr_slots; int max_used_slots; scalar_t__ tx; int mmio_base; scalar_t__ type; TYPE_1__* dev; } ;
struct TYPE_2__ {int wl; } ;


 int b43legacydbg (int ,char*,unsigned int,int ,char*,int ,int ) ;
 int dmacontroller_cleanup (struct b43legacy_dmaring*) ;
 int free_all_descbuffers (struct b43legacy_dmaring*) ;
 int free_ringmemory (struct b43legacy_dmaring*) ;
 int kfree (struct b43legacy_dmaring*) ;

__attribute__((used)) static void b43legacy_destroy_dmaring(struct b43legacy_dmaring *ring)
{
 if (!ring)
  return;

 b43legacydbg(ring->dev->wl, "DMA-%u 0x%04X (%s) max used slots:"
       " %d/%d\n", (unsigned int)(ring->type), ring->mmio_base,
       (ring->tx) ? "TX" : "RX", ring->max_used_slots,
       ring->nr_slots);



 dmacontroller_cleanup(ring);
 free_all_descbuffers(ring);
 free_ringmemory(ring);

 kfree(ring->txhdr_cache);
 kfree(ring->meta);
 kfree(ring);
}
