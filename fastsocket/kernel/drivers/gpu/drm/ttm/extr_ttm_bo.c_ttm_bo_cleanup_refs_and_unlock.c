
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int ddestroy; int event_queue; int reserved; int sync_obj; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_driver {int (* sync_obj_wait ) (void*,int,int) ;int (* sync_obj_unref ) (void**) ;void* (* sync_obj_ref ) (int ) ;} ;
struct ttm_bo_device {int fence_lock; struct ttm_bo_driver* driver; } ;


 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* stub1 (int ) ;
 int stub2 (void*,int,int) ;
 int stub3 (void**) ;
 int ttm_bo_cleanup_memtype_use (struct ttm_buffer_object*) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;
 int ttm_bo_list_ref_sub (struct ttm_buffer_object*,int,int) ;
 int ttm_bo_reserve_nolru (struct ttm_buffer_object*,int,int,int,int ) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int ttm_bo_cleanup_refs_and_unlock(struct ttm_buffer_object *bo,
       bool interruptible,
       bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_driver *driver = bdev->driver;
 struct ttm_bo_global *glob = bo->glob;
 int put_count;
 int ret;

 spin_lock(&bdev->fence_lock);
 ret = ttm_bo_wait(bo, 0, 0, 1);

 if (ret && !no_wait_gpu) {
  void *sync_obj;






  sync_obj = driver->sync_obj_ref(bo->sync_obj);
  spin_unlock(&bdev->fence_lock);

  atomic_set(&bo->reserved, 0);
  wake_up_all(&bo->event_queue);
  spin_unlock(&glob->lru_lock);

  ret = driver->sync_obj_wait(sync_obj, 0, interruptible);
  driver->sync_obj_unref(&sync_obj);
  if (ret)
   return ret;





  spin_lock(&bdev->fence_lock);
  ret = ttm_bo_wait(bo, 0, 0, 1);
  WARN_ON(ret);
  spin_unlock(&bdev->fence_lock);
  if (ret)
   return ret;

  spin_lock(&glob->lru_lock);
  ret = ttm_bo_reserve_nolru(bo, 0, 1, 0, 0);
  if (ret) {
   spin_unlock(&glob->lru_lock);
   return 0;
  }
 } else
  spin_unlock(&bdev->fence_lock);

 if (ret || unlikely(list_empty(&bo->ddestroy))) {
  atomic_set(&bo->reserved, 0);
  wake_up_all(&bo->event_queue);
  spin_unlock(&glob->lru_lock);
  return ret;
 }

 put_count = ttm_bo_del_from_lru(bo);
 list_del_init(&bo->ddestroy);
 ++put_count;

 spin_unlock(&glob->lru_lock);
 ttm_bo_cleanup_memtype_use(bo);

 ttm_bo_list_ref_sub(bo, put_count, 1);

 return 0;
}
