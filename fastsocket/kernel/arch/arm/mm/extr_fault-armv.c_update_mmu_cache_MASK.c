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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,struct vm_area_struct*,unsigned long,unsigned long) ; 
 struct address_space* FUNC4 (struct page*) ; 
 struct page* FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
	unsigned long pfn = FUNC7(pte);
	struct address_space *mapping;
	struct page *page;

	if (!FUNC6(pfn))
		return;

	page = FUNC5(pfn);
	mapping = FUNC4(page);
#ifndef CONFIG_SMP
	if (FUNC8(PG_dcache_dirty, &page->flags))
		FUNC0(mapping, page);
#endif
	if (mapping) {
		if (FUNC2())
			FUNC3(mapping, vma, addr, pfn);
		else if (vma->vm_flags & VM_EXEC)
			FUNC1();
	}
}