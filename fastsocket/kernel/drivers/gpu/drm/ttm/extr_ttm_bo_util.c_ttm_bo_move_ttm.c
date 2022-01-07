
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct ttm_mem_reg {scalar_t__ mem_type; int * mm_node; int placement; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; struct ttm_tt* ttm; } ;


 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_MASK_MEM ;
 scalar_t__ TTM_PL_SYSTEM ;
 int ttm_bo_free_old_node (struct ttm_buffer_object*) ;
 int ttm_flag_masked (int *,int ,int ) ;
 int ttm_tt_bind (struct ttm_tt*,struct ttm_mem_reg*) ;
 int ttm_tt_set_placement_caching (struct ttm_tt*,int ) ;
 int ttm_tt_unbind (struct ttm_tt*) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_move_ttm(struct ttm_buffer_object *bo,
      bool evict,
      bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
 struct ttm_tt *ttm = bo->ttm;
 struct ttm_mem_reg *old_mem = &bo->mem;
 int ret;

 if (old_mem->mem_type != TTM_PL_SYSTEM) {
  ttm_tt_unbind(ttm);
  ttm_bo_free_old_node(bo);
  ttm_flag_masked(&old_mem->placement, TTM_PL_FLAG_SYSTEM,
    TTM_PL_MASK_MEM);
  old_mem->mem_type = TTM_PL_SYSTEM;
 }

 ret = ttm_tt_set_placement_caching(ttm, new_mem->placement);
 if (unlikely(ret != 0))
  return ret;

 if (new_mem->mem_type != TTM_PL_SYSTEM) {
  ret = ttm_tt_bind(ttm, new_mem);
  if (unlikely(ret != 0))
   return ret;
 }

 *old_mem = *new_mem;
 new_mem->mm_node = ((void*)0);

 return 0;
}
