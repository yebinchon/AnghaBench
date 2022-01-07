
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ioat_ring_ent {int dummy; } ;
struct ioat2_dma_chan {struct ioat_ring_ent** ring; } ;


 size_t ioat2_ring_mask (struct ioat2_dma_chan*) ;

__attribute__((used)) static inline struct ioat_ring_ent *
ioat2_get_ring_ent(struct ioat2_dma_chan *ioat, u16 idx)
{
 return ioat->ring[idx & ioat2_ring_mask(ioat)];
}
