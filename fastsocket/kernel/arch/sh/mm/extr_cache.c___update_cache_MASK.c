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
struct vm_area_struct {int dummy; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_3__ {int /*<<< orphan*/  n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_dirty ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 TYPE_2__ boot_cpu_data ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 struct page* FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct vm_area_struct *vma,
		    unsigned long address, pte_t pte)
{
	struct page *page;
	unsigned long pfn = FUNC5(pte);

	if (!boot_cpu_data.dcache.n_aliases)
		return;

	page = FUNC3(pfn);
	if (FUNC4(pfn)) {
		int dirty = FUNC6(PG_dcache_dirty, &page->flags);
		if (dirty) {
			unsigned long addr = (unsigned long)FUNC1(page);

			if (FUNC2(addr, address & PAGE_MASK))
				FUNC0((void *)addr, PAGE_SIZE);
		}
	}
}