
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct skge_tx_desc {void* next_offset; } ;
struct skge_ring {int count; struct skge_element* start; struct skge_element* to_clean; struct skge_element* to_use; } ;
struct skge_element {struct skge_element* next; struct skge_tx_desc* desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct skge_element* kcalloc (int,int,int ) ;

__attribute__((used)) static int skge_ring_alloc(struct skge_ring *ring, void *vaddr, u32 base)
{
 struct skge_tx_desc *d;
 struct skge_element *e;
 int i;

 ring->start = kcalloc(ring->count, sizeof(*e), GFP_KERNEL);
 if (!ring->start)
  return -ENOMEM;

 for (i = 0, e = ring->start, d = vaddr; i < ring->count; i++, e++, d++) {
  e->desc = d;
  if (i == ring->count - 1) {
   e->next = ring->start;
   d->next_offset = base;
  } else {
   e->next = e + 1;
   d->next_offset = base + (i+1) * sizeof(*d);
  }
 }
 ring->to_use = ring->to_clean = ring->start;

 return 0;
}
