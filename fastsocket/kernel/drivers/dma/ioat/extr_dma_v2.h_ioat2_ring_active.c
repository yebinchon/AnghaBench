
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioat2_dma_chan {int head; int tail; } ;


 int ioat2_ring_mask (struct ioat2_dma_chan*) ;

__attribute__((used)) static inline u16 ioat2_ring_active(struct ioat2_dma_chan *ioat)
{
 return (ioat->head - ioat->tail) & ioat2_ring_mask(ioat);
}
