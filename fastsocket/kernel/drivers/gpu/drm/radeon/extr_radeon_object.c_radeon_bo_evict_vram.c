
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int igp_sideport_enabled; } ;
struct radeon_device {int flags; TYPE_2__ mman; TYPE_1__ mc; } ;


 int RADEON_IS_IGP ;
 int TTM_PL_VRAM ;
 int ttm_bo_evict_mm (int *,int ) ;

int radeon_bo_evict_vram(struct radeon_device *rdev)
{

 if (0 && (rdev->flags & RADEON_IS_IGP)) {
  if (rdev->mc.igp_sideport_enabled == 0)

   return 0;
 }
 return ttm_bo_evict_mm(&rdev->mman.bdev, TTM_PL_VRAM);
}
