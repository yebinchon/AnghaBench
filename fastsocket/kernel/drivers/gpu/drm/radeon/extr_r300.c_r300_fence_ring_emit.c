
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct TYPE_4__ {int hdp_cntl; } ;
struct TYPE_5__ {TYPE_1__ r300; } ;
struct radeon_device {TYPE_3__* fence_drv; TYPE_2__ config; struct radeon_ring* ring; } ;
struct TYPE_6__ {int scratch_reg; } ;


 int PACKET0 (int ,int ) ;
 int R300_RB3D_DC_FLUSH ;
 int R300_RB3D_DSTCACHE_CTLSTAT ;
 int R300_RB3D_ZCACHE_CTLSTAT ;
 int R300_RE_SCISSORS_BR ;
 int R300_RE_SCISSORS_TL ;
 int R300_ZC_FLUSH ;
 int RADEON_GEN_INT_STATUS ;
 int RADEON_HDP_READ_BUFFER_INVALIDATE ;
 int RADEON_HOST_PATH_CNTL ;
 int RADEON_SW_INT_FIRE ;
 int RADEON_WAIT_2D_IDLECLEAN ;
 int RADEON_WAIT_3D_IDLECLEAN ;
 int RADEON_WAIT_DMA_GUI_IDLE ;
 int RADEON_WAIT_UNTIL ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void r300_fence_ring_emit(struct radeon_device *rdev,
     struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];




 radeon_ring_write(ring, PACKET0(R300_RE_SCISSORS_TL, 0));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, PACKET0(R300_RE_SCISSORS_BR, 0));
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, PACKET0(R300_RB3D_DSTCACHE_CTLSTAT, 0));
 radeon_ring_write(ring, R300_RB3D_DC_FLUSH);
 radeon_ring_write(ring, PACKET0(R300_RB3D_ZCACHE_CTLSTAT, 0));
 radeon_ring_write(ring, R300_ZC_FLUSH);

 radeon_ring_write(ring, PACKET0(RADEON_WAIT_UNTIL, 0));
 radeon_ring_write(ring, (RADEON_WAIT_3D_IDLECLEAN |
     RADEON_WAIT_2D_IDLECLEAN |
     RADEON_WAIT_DMA_GUI_IDLE));
 radeon_ring_write(ring, PACKET0(RADEON_HOST_PATH_CNTL, 0));
 radeon_ring_write(ring, rdev->config.r300.hdp_cntl |
    RADEON_HDP_READ_BUFFER_INVALIDATE);
 radeon_ring_write(ring, PACKET0(RADEON_HOST_PATH_CNTL, 0));
 radeon_ring_write(ring, rdev->config.r300.hdp_cntl);

 radeon_ring_write(ring, PACKET0(rdev->fence_drv[fence->ring].scratch_reg, 0));
 radeon_ring_write(ring, fence->seq);
 radeon_ring_write(ring, PACKET0(RADEON_GEN_INT_STATUS, 0));
 radeon_ring_write(ring, RADEON_SW_INT_FIRE);
}
