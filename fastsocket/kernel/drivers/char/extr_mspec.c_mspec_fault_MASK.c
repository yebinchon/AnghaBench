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
struct vma_data {unsigned long* maddr; scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct vm_fault {size_t pgoff; scalar_t__ virtual_address; } ;
struct vm_area_struct {struct vma_data* vm_private_data; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 scalar_t__ MSPEC_FETCHOP ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long) ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_OOM ; 
 unsigned long __IA64_UNCACHED_OFFSET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	unsigned long paddr, maddr;
	unsigned long pfn;
	pgoff_t index = vmf->pgoff;
	struct vma_data *vdata = vma->vm_private_data;

	maddr = (volatile unsigned long) vdata->maddr[index];
	if (maddr == 0) {
		maddr = FUNC4(FUNC1(), 1);
		if (maddr == 0)
			return VM_FAULT_OOM;

		FUNC2(&vdata->lock);
		if (vdata->maddr[index] == 0) {
			vdata->count++;
			vdata->maddr[index] = maddr;
		} else {
			FUNC5(maddr, 1);
			maddr = vdata->maddr[index];
		}
		FUNC3(&vdata->lock);
	}

	if (vdata->type == MSPEC_FETCHOP)
		paddr = FUNC0(maddr);
	else
		paddr = maddr & ~__IA64_UNCACHED_OFFSET;

	pfn = paddr >> PAGE_SHIFT;

	/*
	 * vm_insert_pfn can fail with -EBUSY, but in that case it will
	 * be because another thread has installed the pte first, so it
	 * is no problem.
	 */
	FUNC6(vma, (unsigned long)vmf->virtual_address, pfn);

	return VM_FAULT_NOPAGE;
}