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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  __cpa_flush_range ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long start, int numpages, int cache)
{
	unsigned int i, level;
	unsigned long addr;

	FUNC0(FUNC4());
	FUNC2(FUNC1(start) != start);

	FUNC6(__cpa_flush_range, NULL, 1);

	if (!cache)
		return;

	/*
	 * We only need to flush on one CPU,
	 * clflush is a MESI-coherent instruction that
	 * will cause all other CPUs to flush the same
	 * cachelines:
	 */
	for (i = 0, addr = start; i < numpages; i++, addr += PAGE_SIZE) {
		pte_t *pte = FUNC5(addr, &level);

		/*
		 * Only flush present addresses:
		 */
		if (pte && (FUNC7(*pte) & _PAGE_PRESENT))
			FUNC3((void *) addr, PAGE_SIZE);
	}
}