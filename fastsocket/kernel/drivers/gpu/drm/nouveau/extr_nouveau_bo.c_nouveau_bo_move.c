
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_reg {scalar_t__ mem_type; int * mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int ttm; int bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct TYPE_3__ {int move; } ;
struct nouveau_drm {int device; TYPE_1__ ttm; } ;
struct nouveau_bo {struct nouveau_drm_tile* tile; } ;
struct TYPE_4__ {scalar_t__ card_type; } ;


 int BUG_ON (int ) ;
 scalar_t__ NV_50 ;
 scalar_t__ TTM_PL_SYSTEM ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_move_flipd (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ;
 int nouveau_bo_move_flips (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ;
 int nouveau_bo_move_m2mf (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ;
 int nouveau_bo_vm_bind (struct ttm_buffer_object*,struct ttm_mem_reg*,struct nouveau_drm_tile**) ;
 int nouveau_bo_vm_cleanup (struct ttm_buffer_object*,struct nouveau_drm_tile*,struct nouveau_drm_tile**) ;
 TYPE_2__* nv_device (int ) ;
 int ttm_bo_move_memcpy (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move(struct ttm_buffer_object *bo, bool evict, bool intr,
  bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct ttm_mem_reg *old_mem = &bo->mem;
 struct nouveau_drm_tile *new_tile = ((void*)0);
 int ret = 0;

 if (nv_device(drm->device)->card_type < NV_50) {
  ret = nouveau_bo_vm_bind(bo, new_mem, &new_tile);
  if (ret)
   return ret;
 }


 if (old_mem->mem_type == TTM_PL_SYSTEM && !bo->ttm) {
  BUG_ON(bo->mem.mm_node != ((void*)0));
  bo->mem = *new_mem;
  new_mem->mm_node = ((void*)0);
  goto out;
 }


 if (!drm->ttm.move) {
  ret = ttm_bo_move_memcpy(bo, evict, no_wait_gpu, new_mem);
  goto out;
 }


 if (new_mem->mem_type == TTM_PL_SYSTEM)
  ret = nouveau_bo_move_flipd(bo, evict, intr,
         no_wait_gpu, new_mem);
 else if (old_mem->mem_type == TTM_PL_SYSTEM)
  ret = nouveau_bo_move_flips(bo, evict, intr,
         no_wait_gpu, new_mem);
 else
  ret = nouveau_bo_move_m2mf(bo, evict, intr,
        no_wait_gpu, new_mem);

 if (!ret)
  goto out;


 ret = ttm_bo_move_memcpy(bo, evict, no_wait_gpu, new_mem);

out:
 if (nv_device(drm->device)->card_type < NV_50) {
  if (ret)
   nouveau_bo_vm_cleanup(bo, ((void*)0), &new_tile);
  else
   nouveau_bo_vm_cleanup(bo, new_tile, &nvbo->tile);
 }

 return ret;
}
