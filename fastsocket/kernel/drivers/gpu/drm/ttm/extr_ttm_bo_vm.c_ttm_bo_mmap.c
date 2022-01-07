
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; int vm_start; int vm_flags; struct ttm_buffer_object* vm_private_data; int * vm_ops; int vm_pgoff; } ;
struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct ttm_bo_driver {int (* verify_access ) (struct ttm_buffer_object*,struct file*) ;} ;
struct ttm_bo_device {int vm_lock; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ttm_bo_driver* driver; } ;


 int EINVAL ;
 int EPERM ;
 int PAGE_SHIFT ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_MIXEDMAP ;
 int VM_RESERVED ;
 scalar_t__ likely (int ) ;
 int pr_err (char*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct ttm_buffer_object*,struct file*) ;
 int ttm_bo_reference (struct ttm_buffer_object*) ;
 int ttm_bo_unref (struct ttm_buffer_object**) ;
 struct ttm_buffer_object* ttm_bo_vm_lookup_rb (struct ttm_bo_device*,int ,int) ;
 int ttm_bo_vm_ops ;
 scalar_t__ unlikely (int) ;

int ttm_bo_mmap(struct file *filp, struct vm_area_struct *vma,
  struct ttm_bo_device *bdev)
{
 struct ttm_bo_driver *driver;
 struct ttm_buffer_object *bo;
 int ret;

 read_lock(&bdev->vm_lock);
 bo = ttm_bo_vm_lookup_rb(bdev, vma->vm_pgoff,
     (vma->vm_end - vma->vm_start) >> PAGE_SHIFT);
 if (likely(bo != ((void*)0)))
  ttm_bo_reference(bo);
 read_unlock(&bdev->vm_lock);

 if (unlikely(bo == ((void*)0))) {
  pr_err("Could not find buffer object to map\n");
  return -EINVAL;
 }

 driver = bo->bdev->driver;
 if (unlikely(!driver->verify_access)) {
  ret = -EPERM;
  goto out_unref;
 }
 ret = driver->verify_access(bo, filp);
 if (unlikely(ret != 0))
  goto out_unref;

 vma->vm_ops = &ttm_bo_vm_ops;






 vma->vm_private_data = bo;
 vma->vm_flags |= VM_RESERVED | VM_IO | VM_MIXEDMAP | VM_DONTEXPAND;
 return 0;
out_unref:
 ttm_bo_unref(&bo);
 return ret;
}
