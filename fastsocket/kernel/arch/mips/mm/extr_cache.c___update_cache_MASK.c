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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 struct page* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct vm_area_struct *vma, unsigned long address,
	pte_t pte)
{
	struct page *page;
	unsigned long pfn, addr;
	int exec = (vma->vm_flags & VM_EXEC) && !cpu_has_ic_fills_f_dc;

	pfn = FUNC8(pte);
	if (FUNC9(!FUNC7(pfn)))
		return;
	page = FUNC6(pfn);
	if (FUNC4(page) && FUNC1(page)) {
		addr = (unsigned long) FUNC3(page);
		if (exec || FUNC5(addr, address & PAGE_MASK))
			FUNC2(addr);
		FUNC0(page);
	}
}