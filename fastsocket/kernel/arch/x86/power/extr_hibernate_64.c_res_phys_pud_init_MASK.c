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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PMD_SIZE ; 
 long PTRS_PER_PMD ; 
 long PTRS_PER_PUD ; 
 long PUD_SIZE ; 
 int _KERNPG_TABLE ; 
 unsigned long __PAGE_KERNEL_LARGE_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long __supported_pte_mask ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(pud_t *pud, unsigned long address, unsigned long end)
{
	long i, j;

	i = FUNC4(address);
	pud = pud + i;
	for (; i < PTRS_PER_PUD; pud++, i++) {
		unsigned long paddr;
		pmd_t *pmd;

		paddr = address + i*PUD_SIZE;
		if (paddr >= end)
			break;

		pmd = (pmd_t *)FUNC3(GFP_ATOMIC);
		if (!pmd)
			return -ENOMEM;
		FUNC6(pud, FUNC2(FUNC0(pmd) | _KERNPG_TABLE));
		for (j = 0; j < PTRS_PER_PMD; pmd++, j++, paddr += PMD_SIZE) {
			unsigned long pe;

			if (paddr >= end)
				break;
			pe = __PAGE_KERNEL_LARGE_EXEC | paddr;
			pe &= __supported_pte_mask;
			FUNC5(pmd, FUNC1(pe));
		}
	}
	return 0;
}