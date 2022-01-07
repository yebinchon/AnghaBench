
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int num_pages; } ;
struct ttm_buffer_object {int addr_space_offset; TYPE_2__* vm_node; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int vm_lock; int addr_space_mm; } ;
struct TYPE_6__ {scalar_t__ start; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 TYPE_2__* drm_mm_get_block_atomic (TYPE_2__*,int ,int ) ;
 int drm_mm_pre_get (int *) ;
 TYPE_2__* drm_mm_search_free (int *,int ,int ,int ) ;
 int ttm_bo_vm_insert_rb (struct ttm_buffer_object*) ;
 scalar_t__ unlikely (int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int ttm_bo_setup_vm(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 int ret;

retry_pre_get:
 ret = drm_mm_pre_get(&bdev->addr_space_mm);
 if (unlikely(ret != 0))
  return ret;

 write_lock(&bdev->vm_lock);
 bo->vm_node = drm_mm_search_free(&bdev->addr_space_mm,
      bo->mem.num_pages, 0, 0);

 if (unlikely(bo->vm_node == ((void*)0))) {
  ret = -ENOMEM;
  goto out_unlock;
 }

 bo->vm_node = drm_mm_get_block_atomic(bo->vm_node,
           bo->mem.num_pages, 0);

 if (unlikely(bo->vm_node == ((void*)0))) {
  write_unlock(&bdev->vm_lock);
  goto retry_pre_get;
 }

 ttm_bo_vm_insert_rb(bo);
 write_unlock(&bdev->vm_lock);
 bo->addr_space_offset = ((uint64_t) bo->vm_node->start) << PAGE_SHIFT;

 return 0;
out_unlock:
 write_unlock(&bdev->vm_lock);
 return ret;
}
