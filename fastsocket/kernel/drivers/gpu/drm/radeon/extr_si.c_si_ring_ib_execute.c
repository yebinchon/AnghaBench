
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_save_reg; int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; TYPE_2__* vm; scalar_t__ is_const_ib; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_ring* ring; } ;
struct TYPE_4__ {int id; } ;


 int CP_COHER_CNTL2 ;
 int PACKET3 (int ,int) ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_INDIRECT_BUFFER_CONST ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_START ;
 int PACKET3_SH_ICACHE_ACTION_ENA ;
 int PACKET3_SH_KCACHE_ACTION_ENA ;
 int PACKET3_SURFACE_SYNC ;
 int PACKET3_SWITCH_BUFFER ;
 int PACKET3_TCL1_ACTION_ENA ;
 int PACKET3_TC_ACTION_ENA ;
 int PACKET3_WRITE_DATA ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void si_ring_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];
 u32 header;

 if (ib->is_const_ib) {

  radeon_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  radeon_ring_write(ring, 0);

  header = PACKET3(PACKET3_INDIRECT_BUFFER_CONST, 2);
 } else {
  u32 next_rptr;
  if (ring->rptr_save_reg) {
   next_rptr = ring->wptr + 3 + 4 + 8;
   radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
   radeon_ring_write(ring, ((ring->rptr_save_reg -
        PACKET3_SET_CONFIG_REG_START) >> 2));
   radeon_ring_write(ring, next_rptr);
  } else if (rdev->wb.enabled) {
   next_rptr = ring->wptr + 5 + 4 + 8;
   radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
   radeon_ring_write(ring, (1 << 8));
   radeon_ring_write(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
   radeon_ring_write(ring, upper_32_bits(ring->next_rptr_gpu_addr) & 0xffffffff);
   radeon_ring_write(ring, next_rptr);
  }

  header = PACKET3(PACKET3_INDIRECT_BUFFER, 2);
 }

 radeon_ring_write(ring, header);
 radeon_ring_write(ring,



     (ib->gpu_addr & 0xFFFFFFFC));
 radeon_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xFFFF);
 radeon_ring_write(ring, ib->length_dw |
     (ib->vm ? (ib->vm->id << 24) : 0));

 if (!ib->is_const_ib) {

  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, (CP_COHER_CNTL2 - PACKET3_SET_CONFIG_REG_START) >> 2);
  radeon_ring_write(ring, ib->vm ? ib->vm->id : 0);
  radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
  radeon_ring_write(ring, PACKET3_TCL1_ACTION_ENA |
      PACKET3_TC_ACTION_ENA |
      PACKET3_SH_KCACHE_ACTION_ENA |
      PACKET3_SH_ICACHE_ACTION_ENA);
  radeon_ring_write(ring, 0xFFFFFFFF);
  radeon_ring_write(ring, 0);
  radeon_ring_write(ring, 10);
 }
}
