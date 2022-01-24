#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vma_data {int vm_start; int vm_end; int flags; int type; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; } ;
struct vm_area_struct {scalar_t__ vm_pgoff; int vm_flags; int vm_end; int vm_start; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; struct vma_data* vm_private_data; } ;
struct file {int dummy; } ;
typedef  enum mspec_page_type { ____Placeholder_mspec_page_type } mspec_page_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MSPEC_FETCHOP ; 
 scalar_t__ MSPEC_UNCACHED ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int VMD_VMALLOCED ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int VM_PFNMAP ; 
 int VM_RESERVED ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 struct vma_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vma_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mspec_vm_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vma_data* FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct file *file, struct vm_area_struct *vma,
					enum mspec_page_type type)
{
	struct vma_data *vdata;
	int pages, vdata_size, flags = 0;

	if (vma->vm_pgoff != 0)
		return -EINVAL;

	if ((vma->vm_flags & VM_SHARED) == 0)
		return -EINVAL;

	if ((vma->vm_flags & VM_WRITE) == 0)
		return -EPERM;

	pages = (vma->vm_end - vma->vm_start) >> PAGE_SHIFT;
	vdata_size = sizeof(struct vma_data) + pages * sizeof(long);
	if (vdata_size <= PAGE_SIZE)
		vdata = FUNC1(vdata_size, GFP_KERNEL);
	else {
		vdata = FUNC5(vdata_size);
		flags = VMD_VMALLOCED;
	}
	if (!vdata)
		return -ENOMEM;
	FUNC2(vdata, 0, vdata_size);

	vdata->vm_start = vma->vm_start;
	vdata->vm_end = vma->vm_end;
	vdata->flags = flags;
	vdata->type = type;
	FUNC4(&vdata->lock);
	vdata->refcnt = FUNC0(1);
	vma->vm_private_data = vdata;

	vma->vm_flags |= (VM_IO | VM_RESERVED | VM_PFNMAP | VM_DONTEXPAND);
	if (vdata->type == MSPEC_FETCHOP || vdata->type == MSPEC_UNCACHED)
		vma->vm_page_prot = FUNC3(vma->vm_page_prot);
	vma->vm_ops = &mspec_vm_ops;

	return 0;
}