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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long LARGE_PMD_SIZE ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int PTRS_PER_PTE ; 
 int _PAGE_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void *val)
{
	int i;
	pte_t *pte;
	pmd_t *pmd = (pmd_t *)val;

	if (!FUNC3(*pmd))
		return;

	if (FUNC7(FUNC2(*pmd))) {
		unsigned long addr, end;

		if (!(FUNC6(*(pte_t *)val) & _PAGE_DIRTY))
			return;

		addr = FUNC5(*(pte_t *)val) << PAGE_SHIFT;
		end = addr + LARGE_PMD_SIZE;

		while (addr < end) {
			FUNC0((void *)addr);
			addr +=  PAGE_SIZE;
		}
		return;
	}

	pte = FUNC4(pmd, 0);

	for (i = 0; i < PTRS_PER_PTE; i++, pte++)
		FUNC1(pte);
}