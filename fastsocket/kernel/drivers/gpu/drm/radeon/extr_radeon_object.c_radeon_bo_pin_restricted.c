
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ lpfn; int num_placement; } ;
struct radeon_bo {int pin_count; TYPE_2__* rdev; TYPE_3__ placement; int tbo; int * placements; } ;
struct TYPE_4__ {scalar_t__ vram_start; scalar_t__ gtt_start; scalar_t__ visible_vram_size; scalar_t__ gtt_size; } ;
struct TYPE_5__ {int dev; TYPE_1__ mc; } ;


 scalar_t__ PAGE_SHIFT ;
 scalar_t__ RADEON_GEM_DOMAIN_VRAM ;
 int TTM_PL_FLAG_NO_EVICT ;
 int WARN_ON_ONCE (int) ;
 int dev_err (int ,char*,struct radeon_bo*) ;
 scalar_t__ likely (int) ;
 scalar_t__ radeon_bo_gpu_offset (struct radeon_bo*) ;
 int radeon_ttm_placement_from_domain (struct radeon_bo*,scalar_t__) ;
 int ttm_bo_validate (int *,TYPE_3__*,int,int) ;
 scalar_t__ unlikely (int) ;

int radeon_bo_pin_restricted(struct radeon_bo *bo, u32 domain, u64 max_offset,
        u64 *gpu_addr)
{
 int r, i;

 if (bo->pin_count) {
  bo->pin_count++;
  if (gpu_addr)
   *gpu_addr = radeon_bo_gpu_offset(bo);

  if (max_offset != 0) {
   u64 domain_start;

   if (domain == RADEON_GEM_DOMAIN_VRAM)
    domain_start = bo->rdev->mc.vram_start;
   else
    domain_start = bo->rdev->mc.gtt_start;
   WARN_ON_ONCE(max_offset <
         (radeon_bo_gpu_offset(bo) - domain_start));
  }

  return 0;
 }
 radeon_ttm_placement_from_domain(bo, domain);
 if (domain == RADEON_GEM_DOMAIN_VRAM) {

  bo->placement.lpfn = bo->rdev->mc.visible_vram_size >> PAGE_SHIFT;
 }
 if (max_offset) {
  u64 lpfn = max_offset >> PAGE_SHIFT;

  if (!bo->placement.lpfn)
   bo->placement.lpfn = bo->rdev->mc.gtt_size >> PAGE_SHIFT;

  if (lpfn < bo->placement.lpfn)
   bo->placement.lpfn = lpfn;
 }
 for (i = 0; i < bo->placement.num_placement; i++)
  bo->placements[i] |= TTM_PL_FLAG_NO_EVICT;
 r = ttm_bo_validate(&bo->tbo, &bo->placement, 0, 0);
 if (likely(r == 0)) {
  bo->pin_count = 1;
  if (gpu_addr != ((void*)0))
   *gpu_addr = radeon_bo_gpu_offset(bo);
 }
 if (unlikely(r != 0))
  dev_err(bo->rdev->dev, "%p pin failed\n", bo);
 return r;
}
