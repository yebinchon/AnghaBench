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
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; int vm_start; int /*<<< orphan*/  vm_page_prot; } ;
struct ocrdma_ucontext {struct ocrdma_dev* dev; } ;
struct TYPE_2__ {unsigned long db_total_size; unsigned long db_page_size; unsigned long dpp_unmapped_len; scalar_t__ dpp_unmapped_addr; scalar_t__ unmapped_db; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 struct ocrdma_ucontext* FUNC0 (struct ib_ucontext*) ; 
 int FUNC1 (struct vm_area_struct*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocrdma_ucontext*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vm_area_struct*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct ocrdma_ucontext *ucontext = FUNC0(context);
	struct ocrdma_dev *dev = ucontext->dev;
	unsigned long vm_page = vma->vm_pgoff << PAGE_SHIFT;
	u64 unmapped_db = (u64) dev->nic_info.unmapped_db;
	unsigned long len = (vma->vm_end - vma->vm_start);
	int status = 0;
	bool found;

	if (vma->vm_start & (PAGE_SIZE - 1))
		return -EINVAL;
	found = FUNC2(ucontext, vma->vm_pgoff << PAGE_SHIFT, len);
	if (!found)
		return -EINVAL;

	if ((vm_page >= unmapped_db) && (vm_page <= (unmapped_db +
		dev->nic_info.db_total_size)) &&
		(len <=	dev->nic_info.db_page_size)) {
		/* doorbell mapping */
		status = FUNC1(vma, vma->vm_start, vma->vm_pgoff,
					    len, vma->vm_page_prot);
	} else if (dev->nic_info.dpp_unmapped_len &&
		(vm_page >= (u64) dev->nic_info.dpp_unmapped_addr) &&
		(vm_page <= (u64) (dev->nic_info.dpp_unmapped_addr +
			dev->nic_info.dpp_unmapped_len)) &&
		(len <= dev->nic_info.dpp_unmapped_len)) {
		/* dpp area mapping */
		vma->vm_page_prot = FUNC3(vma->vm_page_prot);
		status = FUNC1(vma, vma->vm_start, vma->vm_pgoff,
					    len, vma->vm_page_prot);
	} else {
		/* queue memory mapping */
		status = FUNC4(vma, vma->vm_start,
					 vma->vm_pgoff, len, vma->vm_page_prot);
	}
	return status;
}