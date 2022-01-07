
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ttm_placement {int num_placement; int* placement; int num_busy_placement; int* busy_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_mem_reg {int * mm_node; } ;
struct ttm_buffer_object {int bdev; struct ttm_mem_reg mem; } ;
struct radeon_device {int dummy; } ;


 int TTM_PL_FLAG_TT ;
 int TTM_PL_MASK_CACHING ;
 struct radeon_device* radeon_get_rdev (int ) ;
 int radeon_move_blit (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ;
 int ttm_bo_move_ttm (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int radeon_move_ram_vram(struct ttm_buffer_object *bo,
    bool evict, bool interruptible,
    bool no_wait_gpu,
    struct ttm_mem_reg *new_mem)
{
 struct radeon_device *rdev;
 struct ttm_mem_reg *old_mem = &bo->mem;
 struct ttm_mem_reg tmp_mem;
 struct ttm_placement placement;
 u32 placements;
 int r;

 rdev = radeon_get_rdev(bo->bdev);
 tmp_mem = *new_mem;
 tmp_mem.mm_node = ((void*)0);
 placement.fpfn = 0;
 placement.lpfn = 0;
 placement.num_placement = 1;
 placement.placement = &placements;
 placement.num_busy_placement = 1;
 placement.busy_placement = &placements;
 placements = TTM_PL_MASK_CACHING | TTM_PL_FLAG_TT;
 r = ttm_bo_mem_space(bo, &placement, &tmp_mem,
        interruptible, no_wait_gpu);
 if (unlikely(r)) {
  return r;
 }
 r = ttm_bo_move_ttm(bo, 1, no_wait_gpu, &tmp_mem);
 if (unlikely(r)) {
  goto out_cleanup;
 }
 r = radeon_move_blit(bo, 1, no_wait_gpu, new_mem, old_mem);
 if (unlikely(r)) {
  goto out_cleanup;
 }
out_cleanup:
 ttm_bo_mem_put(bo, &tmp_mem);
 return r;
}
