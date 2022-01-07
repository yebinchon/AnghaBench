
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
struct TYPE_4__ {int mem_global_referenced; int mem_global_ref; TYPE_1__ bo_global_ref; } ;
struct radeon_device {TYPE_2__ mman; } ;


 int drm_global_item_unref (int *) ;

__attribute__((used)) static void radeon_ttm_global_fini(struct radeon_device *rdev)
{
 if (rdev->mman.mem_global_referenced) {
  drm_global_item_unref(&rdev->mman.bo_global_ref.ref);
  drm_global_item_unref(&rdev->mman.mem_global_ref);
  rdev->mman.mem_global_referenced = 0;
 }
}
