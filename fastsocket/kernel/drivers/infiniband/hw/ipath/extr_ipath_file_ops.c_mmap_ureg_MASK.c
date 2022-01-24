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
typedef  unsigned long u64 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct ipath_devdata {unsigned long ipath_physaddr; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_DONTCOPY ; 
 int VM_DONTEXPAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC1 (struct vm_area_struct*,scalar_t__,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma, struct ipath_devdata *dd,
		     u64 ureg)
{
	unsigned long phys;
	int ret;

	/*
	 * This is real hardware, so use io_remap.  This is the mechanism
	 * for the user process to update the head registers for their port
	 * in the chip.
	 */
	if ((vma->vm_end - vma->vm_start) > PAGE_SIZE) {
		FUNC0(&dd->pcidev->dev, "FAIL mmap userreg: reqlen "
			 "%lx > PAGE\n", vma->vm_end - vma->vm_start);
		ret = -EFAULT;
	} else {
		phys = dd->ipath_physaddr + ureg;
		vma->vm_page_prot = FUNC2(vma->vm_page_prot);

		vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;
		ret = FUNC1(vma, vma->vm_start,
					 phys >> PAGE_SHIFT,
					 vma->vm_end - vma->vm_start,
					 vma->vm_page_prot);
	}
	return ret;
}