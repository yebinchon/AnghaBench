
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int kref; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int vm_lock; } ;


 int kref_put (int *,int ) ;
 int ttm_bo_release ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void ttm_bo_unref(struct ttm_buffer_object **p_bo)
{
 struct ttm_buffer_object *bo = *p_bo;
 struct ttm_bo_device *bdev = bo->bdev;

 *p_bo = ((void*)0);
 write_lock(&bdev->vm_lock);
 kref_put(&bo->kref, ttm_bo_release);
 write_unlock(&bdev->vm_lock);
}
