
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int visible_vram_size; } ;
struct radeon_device {TYPE_1__* ring; TYPE_2__ mc; } ;
struct TYPE_3__ {int ready; } ;


 size_t CAYMAN_RING_TYPE_DMA1_INDEX ;
 scalar_t__ DMA0_REGISTER_OFFSET ;
 scalar_t__ DMA1_REGISTER_OFFSET ;
 scalar_t__ DMA_RB_CNTL ;
 int DMA_RB_ENABLE ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;

void cayman_dma_stop(struct radeon_device *rdev)
{
 u32 rb_cntl;

 radeon_ttm_set_active_vram_size(rdev, rdev->mc.visible_vram_size);


 rb_cntl = RREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET);
 rb_cntl &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL + DMA0_REGISTER_OFFSET, rb_cntl);


 rb_cntl = RREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET);
 rb_cntl &= ~DMA_RB_ENABLE;
 WREG32(DMA_RB_CNTL + DMA1_REGISTER_OFFSET, rb_cntl);

 rdev->ring[R600_RING_TYPE_DMA_INDEX].ready = 0;
 rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX].ready = 0;
}
