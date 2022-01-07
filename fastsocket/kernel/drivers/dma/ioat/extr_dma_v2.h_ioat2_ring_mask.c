
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioat2_dma_chan {int alloc_order; } ;



__attribute__((used)) static inline u16 ioat2_ring_mask(struct ioat2_dma_chan *ioat)
{
 return (1 << ioat->alloc_order) - 1;
}
