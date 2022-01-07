
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int ddestroy; int list_kref; int event_queue; int reserved; scalar_t__ sync_obj; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_driver {int (* sync_obj_unref ) (void**) ;int (* sync_obj_flush ) (void*) ;void* (* sync_obj_ref ) (scalar_t__) ;} ;
struct ttm_bo_device {int wq; int ddestroy; int fence_lock; struct ttm_bo_driver* driver; } ;


 int HZ ;
 int atomic_set (int *,int ) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* stub1 (scalar_t__) ;
 int stub2 (void*) ;
 int stub3 (void**) ;
 int ttm_bo_cleanup_memtype_use (struct ttm_buffer_object*) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;
 int ttm_bo_list_ref_sub (struct ttm_buffer_object*,int,int) ;
 int ttm_bo_reserve_nolru (struct ttm_buffer_object*,int,int,int,int ) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ttm_bo_cleanup_refs_or_queue(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_global *glob = bo->glob;
 struct ttm_bo_driver *driver = bdev->driver;
 void *sync_obj = ((void*)0);
 int put_count;
 int ret;

 spin_lock(&glob->lru_lock);
 ret = ttm_bo_reserve_nolru(bo, 0, 1, 0, 0);

 spin_lock(&bdev->fence_lock);
 (void) ttm_bo_wait(bo, 0, 0, 1);
 if (!ret && !bo->sync_obj) {
  spin_unlock(&bdev->fence_lock);
  put_count = ttm_bo_del_from_lru(bo);

  spin_unlock(&glob->lru_lock);
  ttm_bo_cleanup_memtype_use(bo);

  ttm_bo_list_ref_sub(bo, put_count, 1);

  return;
 }
 if (bo->sync_obj)
  sync_obj = driver->sync_obj_ref(bo->sync_obj);
 spin_unlock(&bdev->fence_lock);

 if (!ret) {
  atomic_set(&bo->reserved, 0);
  wake_up_all(&bo->event_queue);
 }

 kref_get(&bo->list_kref);
 list_add_tail(&bo->ddestroy, &bdev->ddestroy);
 spin_unlock(&glob->lru_lock);

 if (sync_obj) {
  driver->sync_obj_flush(sync_obj);
  driver->sync_obj_unref(&sync_obj);
 }
 schedule_delayed_work(&bdev->wq,
         ((HZ / 100) < 1) ? 1 : HZ / 100);
}
