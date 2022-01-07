
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_ring* ring; } ;


 int DMA_PACKET (int ,int ,int ,int) ;
 int DMA_PACKET_INDIRECT_BUFFER ;
 int DMA_PACKET_NOP ;
 int DMA_PACKET_WRITE ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void r600_dma_ring_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];

 if (rdev->wb.enabled) {
  u32 next_rptr = ring->wptr + 4;
  while ((next_rptr & 7) != 5)
   next_rptr++;
  next_rptr += 3;
  radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_WRITE, 0, 0, 1));
  radeon_ring_write(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
  radeon_ring_write(ring, upper_32_bits(ring->next_rptr_gpu_addr) & 0xff);
  radeon_ring_write(ring, next_rptr);
 }




 while ((ring->wptr & 7) != 5)
  radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_NOP, 0, 0, 0));
 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_INDIRECT_BUFFER, 0, 0, 0));
 radeon_ring_write(ring, (ib->gpu_addr & 0xFFFFFFE0));
 radeon_ring_write(ring, (ib->length_dw << 16) | (upper_32_bits(ib->gpu_addr) & 0xFF));

}
