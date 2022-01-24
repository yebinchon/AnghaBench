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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PG_arch_1 ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct vm_area_struct *vma, unsigned long address,
		pte_t pte)
{
	struct page *page;
	unsigned long pfn, addr;
	int exec = (vma->vm_flags & VM_EXEC);

	pfn = FUNC6(pte);
	if (FUNC8(!FUNC5(pfn)))
		return;
	page = FUNC4(pfn);
	if (FUNC3(page) && FUNC7(PG_arch_1, &page->flags)) {
		addr = (unsigned long) FUNC2(page);
		if (exec)
			FUNC1(addr);
		FUNC0(PG_arch_1, &page->flags);
	}
}