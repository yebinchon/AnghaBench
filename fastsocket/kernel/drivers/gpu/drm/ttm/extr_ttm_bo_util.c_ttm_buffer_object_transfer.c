
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {scalar_t__ acc_size; int * destroy; int kref; int list_kref; int * sync_obj; int cpu_writers; int * vm_node; int io_reserve_lru; int swap; int lru; int ddestroy; int event_queue; struct ttm_bo_device* bdev; } ;
struct ttm_bo_driver {int * (* sync_obj_ref ) (int *) ;} ;
struct ttm_bo_device {int fence_lock; struct ttm_bo_driver* driver; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct ttm_buffer_object* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * stub1 (int *) ;
 int ttm_transfered_destroy ;

__attribute__((used)) static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
          struct ttm_buffer_object **new_obj)
{
 struct ttm_buffer_object *fbo;
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_driver *driver = bdev->driver;

 fbo = kmalloc(sizeof(*fbo), GFP_KERNEL);
 if (!fbo)
  return -ENOMEM;

 *fbo = *bo;






 init_waitqueue_head(&fbo->event_queue);
 INIT_LIST_HEAD(&fbo->ddestroy);
 INIT_LIST_HEAD(&fbo->lru);
 INIT_LIST_HEAD(&fbo->swap);
 INIT_LIST_HEAD(&fbo->io_reserve_lru);
 fbo->vm_node = ((void*)0);
 atomic_set(&fbo->cpu_writers, 0);

 spin_lock(&bdev->fence_lock);
 if (bo->sync_obj)
  fbo->sync_obj = driver->sync_obj_ref(bo->sync_obj);
 else
  fbo->sync_obj = ((void*)0);
 spin_unlock(&bdev->fence_lock);
 kref_init(&fbo->list_kref);
 kref_init(&fbo->kref);
 fbo->destroy = &ttm_transfered_destroy;
 fbo->acc_size = 0;

 *new_obj = fbo;
 return 0;
}
