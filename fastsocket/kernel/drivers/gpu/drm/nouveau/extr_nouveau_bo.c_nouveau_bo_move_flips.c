
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ttm_placement {int num_placement; int num_busy_placement; int* placement; int* busy_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_mem_reg {int * mm_node; } ;
struct ttm_buffer_object {int dummy; } ;


 int TTM_PL_FLAG_TT ;
 int TTM_PL_MASK_CACHING ;
 int nouveau_bo_move_m2mf (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ;
 int ttm_bo_move_ttm (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move_flips(struct ttm_buffer_object *bo, bool evict, bool intr,
        bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
 u32 placement_memtype = TTM_PL_FLAG_TT | TTM_PL_MASK_CACHING;
 struct ttm_placement placement;
 struct ttm_mem_reg tmp_mem;
 int ret;

 placement.fpfn = placement.lpfn = 0;
 placement.num_placement = placement.num_busy_placement = 1;
 placement.placement = placement.busy_placement = &placement_memtype;

 tmp_mem = *new_mem;
 tmp_mem.mm_node = ((void*)0);
 ret = ttm_bo_mem_space(bo, &placement, &tmp_mem, intr, no_wait_gpu);
 if (ret)
  return ret;

 ret = ttm_bo_move_ttm(bo, 1, no_wait_gpu, &tmp_mem);
 if (ret)
  goto out;

 ret = nouveau_bo_move_m2mf(bo, 1, intr, no_wait_gpu, new_mem);
 if (ret)
  goto out;

out:
 ttm_bo_mem_put(bo, &tmp_mem);
 return ret;
}
