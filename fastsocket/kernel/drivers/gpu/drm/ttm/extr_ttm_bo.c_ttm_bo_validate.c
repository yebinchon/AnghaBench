
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {scalar_t__ lpfn; scalar_t__ fpfn; int * placement; } ;
struct TYPE_2__ {scalar_t__ mem_type; int placement; } ;
struct ttm_buffer_object {scalar_t__ num_pages; int * ttm; TYPE_1__ mem; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int TTM_PL_MASK_MEMTYPE ;
 scalar_t__ TTM_PL_SYSTEM ;
 int ttm_bo_add_ttm (struct ttm_buffer_object*,int) ;
 int ttm_bo_is_reserved (struct ttm_buffer_object*) ;
 int ttm_bo_mem_compat (struct ttm_placement*,TYPE_1__*) ;
 int ttm_bo_move_buffer (struct ttm_buffer_object*,struct ttm_placement*,int,int) ;
 int ttm_flag_masked (int *,int ,int ) ;

int ttm_bo_validate(struct ttm_buffer_object *bo,
   struct ttm_placement *placement,
   bool interruptible,
   bool no_wait_gpu)
{
 int ret;

 BUG_ON(!ttm_bo_is_reserved(bo));

 if (placement->lpfn || placement->fpfn)
  if (placement->fpfn > placement->lpfn ||
   (placement->lpfn - placement->fpfn) < bo->num_pages)
   return -EINVAL;



 ret = ttm_bo_mem_compat(placement, &bo->mem);
 if (ret < 0) {
  ret = ttm_bo_move_buffer(bo, placement, interruptible,
      no_wait_gpu);
  if (ret)
   return ret;
 } else {




  ttm_flag_masked(&bo->mem.placement, placement->placement[ret],
    ~TTM_PL_MASK_MEMTYPE);
 }



 if (bo->mem.mem_type == TTM_PL_SYSTEM && bo->ttm == ((void*)0)) {
  ret = ttm_bo_add_ttm(bo, 1);
  if (ret)
   return ret;
 }
 return 0;
}
