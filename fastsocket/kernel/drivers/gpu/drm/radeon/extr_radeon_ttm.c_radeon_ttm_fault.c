
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {int dummy; } ;
struct vm_area_struct {scalar_t__ vm_private_data; } ;
struct ttm_buffer_object {int bdev; } ;
struct TYPE_3__ {int mclk_lock; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct TYPE_4__ {int (* fault ) (struct vm_area_struct*,struct vm_fault*) ;} ;


 int VM_FAULT_NOPAGE ;
 int down_read (int *) ;
 struct radeon_device* radeon_get_rdev (int ) ;
 int stub1 (struct vm_area_struct*,struct vm_fault*) ;
 TYPE_2__* ttm_vm_ops ;
 int up_read (int *) ;

__attribute__((used)) static int radeon_ttm_fault(struct vm_area_struct *vma, struct vm_fault *vmf)
{
 struct ttm_buffer_object *bo;
 struct radeon_device *rdev;
 int r;

 bo = (struct ttm_buffer_object *)vma->vm_private_data;
 if (bo == ((void*)0)) {
  return VM_FAULT_NOPAGE;
 }
 rdev = radeon_get_rdev(bo->bdev);
 down_read(&rdev->pm.mclk_lock);
 r = ttm_vm_ops->fault(vma, vmf);
 up_read(&rdev->pm.mclk_lock);
 return r;
}
