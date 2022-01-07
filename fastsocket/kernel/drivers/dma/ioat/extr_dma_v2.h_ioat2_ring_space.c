
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ioat2_dma_chan {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ ioat2_ring_active (struct ioat2_dma_chan*) ;
 scalar_t__ ioat2_ring_mask (struct ioat2_dma_chan*) ;

__attribute__((used)) static inline u16 ioat2_ring_space(struct ioat2_dma_chan *ioat)
{
 u16 num_descs = ioat2_ring_mask(ioat) + 1;
 u16 active = ioat2_ring_active(ioat);

 BUG_ON(active > num_descs);

 return num_descs - active;
}
