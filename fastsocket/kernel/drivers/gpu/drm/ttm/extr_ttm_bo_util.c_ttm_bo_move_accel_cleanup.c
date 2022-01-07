
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; int * mm_node; } ;
struct ttm_buffer_object {int * ttm; int priv_flags; int * sync_obj; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_driver {int (* sync_obj_unref ) (void**) ;int * (* sync_obj_ref ) (void*) ;} ;
struct ttm_bo_device {int fence_lock; struct ttm_mem_type_manager* man; struct ttm_bo_driver* driver; } ;


 int TTM_BO_PRIV_FLAG_MOVING ;
 int TTM_MEMTYPE_FLAG_FIXED ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * stub1 (void*) ;
 int stub2 (void**) ;
 int stub3 (void**) ;
 int ttm_bo_free_old_node (struct ttm_buffer_object*) ;
 int ttm_bo_unref (struct ttm_buffer_object**) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;
 int ttm_buffer_object_transfer (struct ttm_buffer_object*,struct ttm_buffer_object**) ;
 int ttm_tt_destroy (int *) ;
 int ttm_tt_unbind (int *) ;

int ttm_bo_move_accel_cleanup(struct ttm_buffer_object *bo,
         void *sync_obj,
         bool evict,
         bool no_wait_gpu,
         struct ttm_mem_reg *new_mem)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_driver *driver = bdev->driver;
 struct ttm_mem_type_manager *man = &bdev->man[new_mem->mem_type];
 struct ttm_mem_reg *old_mem = &bo->mem;
 int ret;
 struct ttm_buffer_object *ghost_obj;
 void *tmp_obj = ((void*)0);

 spin_lock(&bdev->fence_lock);
 if (bo->sync_obj) {
  tmp_obj = bo->sync_obj;
  bo->sync_obj = ((void*)0);
 }
 bo->sync_obj = driver->sync_obj_ref(sync_obj);
 if (evict) {
  ret = ttm_bo_wait(bo, 0, 0, 0);
  spin_unlock(&bdev->fence_lock);
  if (tmp_obj)
   driver->sync_obj_unref(&tmp_obj);
  if (ret)
   return ret;

  if ((man->flags & TTM_MEMTYPE_FLAG_FIXED) &&
      (bo->ttm != ((void*)0))) {
   ttm_tt_unbind(bo->ttm);
   ttm_tt_destroy(bo->ttm);
   bo->ttm = ((void*)0);
  }
  ttm_bo_free_old_node(bo);
 } else {
  set_bit(TTM_BO_PRIV_FLAG_MOVING, &bo->priv_flags);
  spin_unlock(&bdev->fence_lock);
  if (tmp_obj)
   driver->sync_obj_unref(&tmp_obj);

  ret = ttm_buffer_object_transfer(bo, &ghost_obj);
  if (ret)
   return ret;







  if (!(man->flags & TTM_MEMTYPE_FLAG_FIXED))
   ghost_obj->ttm = ((void*)0);
  else
   bo->ttm = ((void*)0);

  ttm_bo_unreserve(ghost_obj);
  ttm_bo_unref(&ghost_obj);
 }

 *old_mem = *new_mem;
 new_mem->mm_node = ((void*)0);

 return 0;
}
