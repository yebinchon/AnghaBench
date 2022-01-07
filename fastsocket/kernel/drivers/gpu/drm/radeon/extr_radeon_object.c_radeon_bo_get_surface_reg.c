
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_surface_reg {struct radeon_bo* bo; } ;
struct radeon_device {struct radeon_surface_reg* surface_regs; } ;
struct TYPE_3__ {int start; } ;
struct TYPE_4__ {int num_pages; TYPE_1__ mem; } ;
struct radeon_bo {size_t surface_reg; scalar_t__ pin_count; TYPE_2__ tbo; int pitch; int tiling_flags; struct radeon_device* rdev; } ;


 int BUG_ON (int) ;
 int DRM_DEBUG (char*,int,struct radeon_bo*) ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int RADEON_GEM_MAX_SURFACES ;
 int radeon_bo_is_reserved (struct radeon_bo*) ;
 int radeon_set_surface_reg (struct radeon_device*,int,int ,int ,int,int) ;
 int ttm_bo_unmap_virtual (TYPE_2__*) ;

int radeon_bo_get_surface_reg(struct radeon_bo *bo)
{
 struct radeon_device *rdev = bo->rdev;
 struct radeon_surface_reg *reg;
 struct radeon_bo *old_object;
 int steal;
 int i;

 BUG_ON(!radeon_bo_is_reserved(bo));

 if (!bo->tiling_flags)
  return 0;

 if (bo->surface_reg >= 0) {
  reg = &rdev->surface_regs[bo->surface_reg];
  i = bo->surface_reg;
  goto out;
 }

 steal = -1;
 for (i = 0; i < RADEON_GEM_MAX_SURFACES; i++) {

  reg = &rdev->surface_regs[i];
  if (!reg->bo)
   break;

  old_object = reg->bo;
  if (old_object->pin_count == 0)
   steal = i;
 }


 if (i == RADEON_GEM_MAX_SURFACES) {
  if (steal == -1)
   return -ENOMEM;

  reg = &rdev->surface_regs[steal];
  old_object = reg->bo;

  DRM_DEBUG("stealing surface reg %d from %p\n", steal, old_object);
  ttm_bo_unmap_virtual(&old_object->tbo);
  old_object->surface_reg = -1;
  i = steal;
 }

 bo->surface_reg = i;
 reg->bo = bo;

out:
 radeon_set_surface_reg(rdev, i, bo->tiling_flags, bo->pitch,
          bo->tbo.mem.start << PAGE_SHIFT,
          bo->tbo.num_pages << PAGE_SHIFT);
 return 0;
}
