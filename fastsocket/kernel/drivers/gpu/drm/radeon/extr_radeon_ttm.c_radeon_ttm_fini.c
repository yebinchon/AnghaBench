
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; int bdev; } ;
struct radeon_device {TYPE_1__ mman; scalar_t__ stollen_vga_memory; } ;


 int DRM_INFO (char*) ;
 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int radeon_bo_reserve (scalar_t__,int) ;
 int radeon_bo_unpin (scalar_t__) ;
 int radeon_bo_unref (scalar_t__*) ;
 int radeon_bo_unreserve (scalar_t__) ;
 int radeon_gart_fini (struct radeon_device*) ;
 int radeon_ttm_global_fini (struct radeon_device*) ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;

void radeon_ttm_fini(struct radeon_device *rdev)
{
 int r;

 if (!rdev->mman.initialized)
  return;
 if (rdev->stollen_vga_memory) {
  r = radeon_bo_reserve(rdev->stollen_vga_memory, 0);
  if (r == 0) {
   radeon_bo_unpin(rdev->stollen_vga_memory);
   radeon_bo_unreserve(rdev->stollen_vga_memory);
  }
  radeon_bo_unref(&rdev->stollen_vga_memory);
 }
 ttm_bo_clean_mm(&rdev->mman.bdev, TTM_PL_VRAM);
 ttm_bo_clean_mm(&rdev->mman.bdev, TTM_PL_TT);
 ttm_bo_device_release(&rdev->mman.bdev);
 radeon_gart_fini(rdev);
 radeon_ttm_global_fini(rdev);
 rdev->mman.initialized = 0;
 DRM_INFO("radeon: ttm finalized\n");
}
