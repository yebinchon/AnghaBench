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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned int PTRS_PER_PTE ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(pgd_t *spgd)
{
	/* If the entry's not present, there's nothing to release. */
	if (FUNC3(*spgd) & _PAGE_PRESENT) {
		unsigned int i;
		/*
		 * Converting the pfn to find the actual PTE page is easy: turn
		 * the page number into a physical address, then convert to a
		 * virtual address (easy for kernel pages like this one).
		 */
		pte_t *ptepage = FUNC1(FUNC4(*spgd) << PAGE_SHIFT);
		/* For each entry in the page, we might need to release it. */
		for (i = 0; i < PTRS_PER_PTE; i++)
			FUNC5(ptepage[i]);
		/* Now we can free the page of PTEs */
		FUNC2((long)ptepage);
		/* And zero out the PGD entry so we never release it twice. */
		*spgd = FUNC0(0);
	}
}