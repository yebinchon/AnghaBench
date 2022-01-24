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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_pgoff; } ;
typedef  unsigned long resource_size_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  pat_enabled ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct vm_area_struct *vma, pgprot_t *prot,
			unsigned long pfn, unsigned long size)
{
	unsigned long flags;
	resource_size_t paddr;
	unsigned long vma_size = vma->vm_end - vma->vm_start;

	if (FUNC1(vma)) {
		/* reserve the whole chunk starting from vm_pgoff */
		paddr = (resource_size_t)vma->vm_pgoff << PAGE_SHIFT;
		return FUNC4(paddr, vma_size, prot, 0);
	}

	if (!pat_enabled)
		return 0;

	/* for vm_insert_pfn and friends, we set prot based on lookup */
	flags = FUNC2(pfn << PAGE_SHIFT);
	*prot = FUNC0((FUNC3(vma->vm_page_prot) & (~_PAGE_CACHE_MASK)) |
			 flags);

	return 0;
}