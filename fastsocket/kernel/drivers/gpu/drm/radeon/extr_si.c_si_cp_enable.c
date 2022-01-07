
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visible_vram_size; } ;
struct radeon_device {TYPE_2__* ring; TYPE_1__ mc; } ;
struct TYPE_4__ {int ready; } ;


 size_t CAYMAN_RING_TYPE_CP1_INDEX ;
 size_t CAYMAN_RING_TYPE_CP2_INDEX ;
 int CP_CE_HALT ;
 int CP_ME_CNTL ;
 int CP_ME_HALT ;
 int CP_PFP_HALT ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int SCRATCH_UMSK ;
 int WREG32 (int ,int) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void si_cp_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32(CP_ME_CNTL, 0);
 else {
  radeon_ttm_set_active_vram_size(rdev, rdev->mc.visible_vram_size);
  WREG32(CP_ME_CNTL, (CP_ME_HALT | CP_PFP_HALT | CP_CE_HALT));
  WREG32(SCRATCH_UMSK, 0);
  rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = 0;
  rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = 0;
  rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = 0;
 }
 udelay(50);
}
