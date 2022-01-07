
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct TYPE_3__ {scalar_t__ use_event; } ;
struct radeon_device {TYPE_2__* fence_drv; TYPE_1__ wb; struct radeon_ring* ring; } ;
struct TYPE_4__ {int gpu_addr; int scratch_reg; } ;


 int CACHE_FLUSH_AND_INV_EVENT ;
 int CACHE_FLUSH_AND_INV_EVENT_TS ;
 int CP_INT_STATUS ;
 int DATA_SEL (int) ;
 int EVENT_INDEX (int) ;
 int EVENT_TYPE (int ) ;
 int INT_SEL (int) ;
 int PACKET0 (int ,int ) ;
 int PACKET3 (int ,int) ;
 int PACKET3_EVENT_WRITE ;
 int PACKET3_EVENT_WRITE_EOP ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_OFFSET ;
 int PACKET3_SH_ACTION_ENA ;
 int PACKET3_SURFACE_SYNC ;
 int PACKET3_TC_ACTION_ENA ;
 int PACKET3_VC_ACTION_ENA ;
 int RB_INT_STAT ;
 int WAIT_3D_IDLECLEAN_bit ;
 int WAIT_3D_IDLE_bit ;
 int WAIT_UNTIL ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void r600_fence_ring_emit(struct radeon_device *rdev,
     struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];

 if (rdev->wb.use_event) {
  u64 addr = rdev->fence_drv[fence->ring].gpu_addr;

  radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
  radeon_ring_write(ring, PACKET3_TC_ACTION_ENA |
     PACKET3_VC_ACTION_ENA |
     PACKET3_SH_ACTION_ENA);
  radeon_ring_write(ring, 0xFFFFFFFF);
  radeon_ring_write(ring, 0);
  radeon_ring_write(ring, 10);

  radeon_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE_EOP, 4));
  radeon_ring_write(ring, EVENT_TYPE(CACHE_FLUSH_AND_INV_EVENT_TS) | EVENT_INDEX(5));
  radeon_ring_write(ring, addr & 0xffffffff);
  radeon_ring_write(ring, (upper_32_bits(addr) & 0xff) | DATA_SEL(1) | INT_SEL(2));
  radeon_ring_write(ring, fence->seq);
  radeon_ring_write(ring, 0);
 } else {

  radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
  radeon_ring_write(ring, PACKET3_TC_ACTION_ENA |
     PACKET3_VC_ACTION_ENA |
     PACKET3_SH_ACTION_ENA);
  radeon_ring_write(ring, 0xFFFFFFFF);
  radeon_ring_write(ring, 0);
  radeon_ring_write(ring, 10);
  radeon_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE, 0));
  radeon_ring_write(ring, EVENT_TYPE(CACHE_FLUSH_AND_INV_EVENT) | EVENT_INDEX(0));

  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, (WAIT_UNTIL - PACKET3_SET_CONFIG_REG_OFFSET) >> 2);
  radeon_ring_write(ring, WAIT_3D_IDLE_bit | WAIT_3D_IDLECLEAN_bit);

  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, ((rdev->fence_drv[fence->ring].scratch_reg - PACKET3_SET_CONFIG_REG_OFFSET) >> 2));
  radeon_ring_write(ring, fence->seq);

  radeon_ring_write(ring, PACKET0(CP_INT_STATUS, 0));
  radeon_ring_write(ring, RB_INT_STAT);
 }
}
