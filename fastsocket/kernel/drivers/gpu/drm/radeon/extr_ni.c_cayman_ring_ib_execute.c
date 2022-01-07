
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_ring {int rptr_save_reg; int wptr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; TYPE_1__* vm; } ;
struct radeon_device {struct radeon_ring* ring; } ;
struct TYPE_2__ {int id; } ;


 int CP_COHER_CNTL2 ;
 int PACKET3 (int ,int) ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_MODE_CONTROL ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_START ;
 int PACKET3_SH_ACTION_ENA ;
 int PACKET3_SURFACE_SYNC ;
 int PACKET3_TC_ACTION_ENA ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void cayman_ring_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];


 radeon_ring_write(ring, PACKET3(PACKET3_MODE_CONTROL, 0));
 radeon_ring_write(ring, 1);

 if (ring->rptr_save_reg) {
  uint32_t next_rptr = ring->wptr + 3 + 4 + 8;
  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, ((ring->rptr_save_reg -
       PACKET3_SET_CONFIG_REG_START) >> 2));
  radeon_ring_write(ring, next_rptr);
 }

 radeon_ring_write(ring, PACKET3(PACKET3_INDIRECT_BUFFER, 2));
 radeon_ring_write(ring,



     (ib->gpu_addr & 0xFFFFFFFC));
 radeon_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xFF);
 radeon_ring_write(ring, ib->length_dw |
     (ib->vm ? (ib->vm->id << 24) : 0));


 radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
 radeon_ring_write(ring, (CP_COHER_CNTL2 - PACKET3_SET_CONFIG_REG_START) >> 2);
 radeon_ring_write(ring, ib->vm ? ib->vm->id : 0);
 radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
 radeon_ring_write(ring, PACKET3_TC_ACTION_ENA | PACKET3_SH_ACTION_ENA);
 radeon_ring_write(ring, 0xFFFFFFFF);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 10);
}
