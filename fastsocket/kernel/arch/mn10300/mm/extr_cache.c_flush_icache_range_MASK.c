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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (struct page*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(unsigned long start, unsigned long end)
{
#ifdef CONFIG_MN10300_CACHE_WBACK
	unsigned long addr, size, off;
	struct page *page;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *ppte, pte;

	for (; start < end; start += size) {
		/* work out how much of the page to flush */
		off = start & (PAGE_SIZE - 1);

		size = end - start;
		if (size > PAGE_SIZE - off)
			size = PAGE_SIZE - off;

		/* get the physical address the page is mapped to from the page
		 * tables */
		pgd = pgd_offset(current->mm, start);
		if (!pgd || !pgd_val(*pgd))
			continue;

		pud = pud_offset(pgd, start);
		if (!pud || !pud_val(*pud))
			continue;

		pmd = pmd_offset(pud, start);
		if (!pmd || !pmd_val(*pmd))
			continue;

		ppte = pte_offset_map(pmd, start);
		if (!ppte)
			continue;
		pte = *ppte;
		pte_unmap(ppte);

		if (pte_none(pte))
			continue;

		page = pte_page(pte);
		if (!page)
			continue;

		addr = page_to_phys(page);

		/* flush the dcache and invalidate the icache coverage on that
		 * region */
		mn10300_dcache_flush_range2(addr + off, size);
	}
#endif

	FUNC1();
}