
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_pages; } ;
struct ttm_buffer_object {TYPE_1__ mem; scalar_t__ addr_space_offset; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int dev_mapping; } ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int ttm_mem_io_free_vm (struct ttm_buffer_object*) ;
 int unmap_mapping_range (int ,int,int,int) ;

void ttm_bo_unmap_virtual_locked(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 loff_t offset = (loff_t) bo->addr_space_offset;
 loff_t holelen = ((loff_t) bo->mem.num_pages) << PAGE_SHIFT;

 if (!bdev->dev_mapping)
  return;
 unmap_mapping_range(bdev->dev_mapping, offset, holelen, 1);
 ttm_mem_io_free_vm(bo);
}
