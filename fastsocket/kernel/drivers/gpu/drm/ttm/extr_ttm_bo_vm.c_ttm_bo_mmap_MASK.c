#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_end; int vm_start; int vm_flags; struct ttm_buffer_object* vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_pgoff; } ;
struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct ttm_bo_driver {int (* verify_access ) (struct ttm_buffer_object*,struct file*) ;} ;
struct ttm_bo_device {int /*<<< orphan*/  vm_lock; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ttm_bo_driver* driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int VM_MIXEDMAP ; 
 int VM_RESERVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ttm_buffer_object*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object**) ; 
 struct ttm_buffer_object* FUNC7 (struct ttm_bo_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ttm_bo_vm_ops ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct file *filp, struct vm_area_struct *vma,
		struct ttm_bo_device *bdev)
{
	struct ttm_bo_driver *driver;
	struct ttm_buffer_object *bo;
	int ret;

	FUNC2(&bdev->vm_lock);
	bo = FUNC7(bdev, vma->vm_pgoff,
				 (vma->vm_end - vma->vm_start) >> PAGE_SHIFT);
	if (FUNC0(bo != NULL))
		FUNC5(bo);
	FUNC3(&bdev->vm_lock);

	if (FUNC8(bo == NULL)) {
		FUNC1("Could not find buffer object to map\n");
		return -EINVAL;
	}

	driver = bo->bdev->driver;
	if (FUNC8(!driver->verify_access)) {
		ret = -EPERM;
		goto out_unref;
	}
	ret = driver->verify_access(bo, filp);
	if (FUNC8(ret != 0))
		goto out_unref;

	vma->vm_ops = &ttm_bo_vm_ops;

	/*
	 * Note: We're transferring the bo reference to
	 * vma->vm_private_data here.
	 */

	vma->vm_private_data = bo;
	vma->vm_flags |= VM_RESERVED | VM_IO | VM_MIXEDMAP | VM_DONTEXPAND;
	return 0;
out_unref:
	FUNC6(&bo);
	return ret;
}