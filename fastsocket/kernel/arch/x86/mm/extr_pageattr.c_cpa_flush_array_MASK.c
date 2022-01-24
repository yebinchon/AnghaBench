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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CPA_PAGES_ARRAY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  __cpa_flush_all ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long *start, int numpages, int cache,
			    int in_flags, struct page **pages)
{
	unsigned int i, level;
	unsigned long do_wbinvd = cache && numpages >= 1024; /* 4M threshold */

	FUNC0(FUNC2());

	FUNC4(__cpa_flush_all, (void *) do_wbinvd, 1);

	if (!cache || do_wbinvd)
		return;

	/*
	 * We only need to flush on one CPU,
	 * clflush is a MESI-coherent instruction that
	 * will cause all other CPUs to flush the same
	 * cachelines:
	 */
	for (i = 0; i < numpages; i++) {
		unsigned long addr;
		pte_t *pte;

		if (in_flags & CPA_PAGES_ARRAY)
			addr = (unsigned long)FUNC5(pages[i]);
		else
			addr = start[i];

		pte = FUNC3(addr, &level);

		/*
		 * Only flush present addresses:
		 */
		if (pte && (FUNC6(*pte) & _PAGE_PRESENT))
			FUNC1((void *)addr, PAGE_SIZE);
	}
}