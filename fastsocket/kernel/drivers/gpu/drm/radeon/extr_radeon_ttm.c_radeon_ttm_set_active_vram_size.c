
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ttm_mem_type_manager {int size; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {TYPE_1__ bdev; int initialized; } ;
struct radeon_device {TYPE_2__ mman; } ;


 int PAGE_SHIFT ;
 size_t TTM_PL_VRAM ;

void radeon_ttm_set_active_vram_size(struct radeon_device *rdev, u64 size)
{
 struct ttm_mem_type_manager *man;

 if (!rdev->mman.initialized)
  return;

 man = &rdev->mman.bdev.man[TTM_PL_VRAM];

 man->size = size >> PAGE_SHIFT;
}
