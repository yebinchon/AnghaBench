
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int cpu_writers; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int fence_lock; } ;


 int atomic_inc (int *) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int,int ) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_synccpu_write_grab(struct ttm_buffer_object *bo, bool no_wait)
{
 struct ttm_bo_device *bdev = bo->bdev;
 int ret = 0;





 ret = ttm_bo_reserve(bo, 1, no_wait, 0, 0);
 if (unlikely(ret != 0))
  return ret;
 spin_lock(&bdev->fence_lock);
 ret = ttm_bo_wait(bo, 0, 1, no_wait);
 spin_unlock(&bdev->fence_lock);
 if (likely(ret == 0))
  atomic_inc(&bo->cpu_writers);
 ttm_bo_unreserve(bo);
 return ret;
}
