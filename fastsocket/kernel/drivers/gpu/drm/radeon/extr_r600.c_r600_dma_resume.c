
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int ring_size; int gpu_addr; int wptr; int rptr; int ready; } ;
struct TYPE_4__ {int real_vram_size; } ;
struct TYPE_3__ {int gpu_addr; scalar_t__ enabled; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mc; TYPE_1__ wb; struct radeon_ring* ring; } ;


 scalar_t__ CHIP_RV770 ;
 int CTXEMPTY_INT_ENABLE ;
 int DMA_CNTL ;
 int DMA_IB_CNTL ;
 int DMA_IB_ENABLE ;
 int DMA_IB_SWAP_ENABLE ;
 int DMA_MODE ;
 int DMA_RB_BASE ;
 int DMA_RB_CNTL ;
 int DMA_RB_ENABLE ;
 int DMA_RB_RPTR ;
 int DMA_RB_RPTR_ADDR_HI ;
 int DMA_RB_RPTR_ADDR_LO ;
 int DMA_RB_SWAP_ENABLE ;
 int DMA_RB_WPTR ;
 int DMA_RPTR_WRITEBACK_ENABLE ;
 int DMA_RPTR_WRITEBACK_SWAP_ENABLE ;
 int DMA_SEM_INCOMPLETE_TIMER_CNTL ;
 int DMA_SEM_WAIT_FAIL_TIMER_CNTL ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int R600_WB_DMA_RPTR_OFFSET ;
 int RREG32 (int ) ;
 int RV770_SOFT_RESET_DMA ;
 int SOFT_RESET_DMA ;
 int SRBM_SOFT_RESET ;
 int WREG32 (int ,int) ;
 int drm_order (int) ;
 int radeon_ring_test (struct radeon_device*,size_t,struct radeon_ring*) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;
 int udelay (int) ;
 int upper_32_bits (int) ;

int r600_dma_resume(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
 u32 rb_cntl, dma_cntl, ib_cntl;
 u32 rb_bufsz;
 int r;


 if (rdev->family >= CHIP_RV770)
  WREG32(SRBM_SOFT_RESET, RV770_SOFT_RESET_DMA);
 else
  WREG32(SRBM_SOFT_RESET, SOFT_RESET_DMA);
 RREG32(SRBM_SOFT_RESET);
 udelay(50);
 WREG32(SRBM_SOFT_RESET, 0);

 WREG32(DMA_SEM_INCOMPLETE_TIMER_CNTL, 0);
 WREG32(DMA_SEM_WAIT_FAIL_TIMER_CNTL, 0);


 rb_bufsz = drm_order(ring->ring_size / 4);
 rb_cntl = rb_bufsz << 1;



 WREG32(DMA_RB_CNTL, rb_cntl);


 WREG32(DMA_RB_RPTR, 0);
 WREG32(DMA_RB_WPTR, 0);


 WREG32(DMA_RB_RPTR_ADDR_HI,
        upper_32_bits(rdev->wb.gpu_addr + R600_WB_DMA_RPTR_OFFSET) & 0xFF);
 WREG32(DMA_RB_RPTR_ADDR_LO,
        ((rdev->wb.gpu_addr + R600_WB_DMA_RPTR_OFFSET) & 0xFFFFFFFC));

 if (rdev->wb.enabled)
  rb_cntl |= DMA_RPTR_WRITEBACK_ENABLE;

 WREG32(DMA_RB_BASE, ring->gpu_addr >> 8);


 ib_cntl = DMA_IB_ENABLE;



 WREG32(DMA_IB_CNTL, ib_cntl);

 dma_cntl = RREG32(DMA_CNTL);
 dma_cntl &= ~CTXEMPTY_INT_ENABLE;
 WREG32(DMA_CNTL, dma_cntl);

 if (rdev->family >= CHIP_RV770)
  WREG32(DMA_MODE, 1);

 ring->wptr = 0;
 WREG32(DMA_RB_WPTR, ring->wptr << 2);

 ring->rptr = RREG32(DMA_RB_RPTR) >> 2;

 WREG32(DMA_RB_CNTL, rb_cntl | DMA_RB_ENABLE);

 ring->ready = 1;

 r = radeon_ring_test(rdev, R600_RING_TYPE_DMA_INDEX, ring);
 if (r) {
  ring->ready = 0;
  return r;
 }

 radeon_ttm_set_active_vram_size(rdev, rdev->mc.real_vram_size);

 return 0;
}
