#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_fault {int pgoff; struct page* page; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; scalar_t__ vm_private_data; } ;
struct page {int dummy; } ;
struct TYPE_3__ {unsigned long bufflen; int k_use_sg; int page_order; int /*<<< orphan*/ * pages; } ;
struct TYPE_4__ {TYPE_1__ reserve; } ;
typedef  TYPE_1__ Sg_scatter_hold ;
typedef  TYPE_2__ Sg_fd ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int) ; 

__attribute__((used)) static int
FUNC4(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	Sg_fd *sfp;
	unsigned long offset, len, sa;
	Sg_scatter_hold *rsv_schp;
	int k, length;

	if ((NULL == vma) || (!(sfp = (Sg_fd *) vma->vm_private_data)))
		return VM_FAULT_SIGBUS;
	rsv_schp = &sfp->reserve;
	offset = vmf->pgoff << PAGE_SHIFT;
	if (offset >= rsv_schp->bufflen)
		return VM_FAULT_SIGBUS;
	FUNC0(3, FUNC3("sg_vma_fault: offset=%lu, scatg=%d\n",
				   offset, rsv_schp->k_use_sg));
	sa = vma->vm_start;
	length = 1 << (PAGE_SHIFT + rsv_schp->page_order);
	for (k = 0; k < rsv_schp->k_use_sg && sa < vma->vm_end; k++) {
		len = vma->vm_end - sa;
		len = (len < length) ? len : length;
		if (offset < len) {
			struct page *page = FUNC2(rsv_schp->pages[k],
						     offset >> PAGE_SHIFT);
			FUNC1(page);	/* increment page count */
			vmf->page = page;
			return 0; /* success */
		}
		sa += len;
		offset -= len;
	}

	return VM_FAULT_SIGBUS;
}