
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys; } ;
struct ioat_ring_ent {TYPE_1__ txd; struct ioat_dma_descriptor* hw; } ;
struct ioat_dma_descriptor {int next; } ;
struct dma_chan {int dummy; } ;
typedef int gfp_t ;


 struct ioat_ring_ent* ioat2_alloc_ring_ent (struct dma_chan*,int ) ;
 int ioat2_free_ring_ent (struct ioat_ring_ent*,struct dma_chan*) ;
 int ioat_get_max_alloc_order () ;
 struct ioat_ring_ent** kcalloc (int,int,int ) ;
 int kfree (struct ioat_ring_ent**) ;
 int set_desc_id (struct ioat_ring_ent*,int) ;

__attribute__((used)) static struct ioat_ring_ent **ioat2_alloc_ring(struct dma_chan *c, int order, gfp_t flags)
{
 struct ioat_ring_ent **ring;
 int descs = 1 << order;
 int i;

 if (order > ioat_get_max_alloc_order())
  return ((void*)0);


 ring = kcalloc(descs, sizeof(*ring), flags);
 if (!ring)
  return ((void*)0);
 for (i = 0; i < descs; i++) {
  ring[i] = ioat2_alloc_ring_ent(c, flags);
  if (!ring[i]) {
   while (i--)
    ioat2_free_ring_ent(ring[i], c);
   kfree(ring);
   return ((void*)0);
  }
  set_desc_id(ring[i], i);
 }


 for (i = 0; i < descs-1; i++) {
  struct ioat_ring_ent *next = ring[i+1];
  struct ioat_dma_descriptor *hw = ring[i]->hw;

  hw->next = next->txd.phys;
 }
 ring[i]->hw->next = ring[0]->txd.phys;

 return ring;
}
