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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,struct page**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,struct page**,int*) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(pud_t pud, unsigned long addr, unsigned long end,
		int write, struct page **pages, int *nr)
{
	unsigned long next;
	pmd_t *pmdp;

	pmdp = FUNC5(&pud, addr);
	do {
		pmd_t pmd = *pmdp;

		next = FUNC2(addr, end);
		/*
		 * The pmd_trans_splitting() check below explains why
		 * pmdp_splitting_flush has to flush the tlb, to stop
		 * this gup-fast code from running while we set the
		 * splitting bit in the pmd. Returning zero will take
		 * the slow path that will call wait_split_huge_page()
		 * if the pmd is still in splitting state. gup-fast
		 * can't because it has irq disabled and
		 * wait_split_huge_page() would never return as the
		 * tlb flush IPI wouldn't run.
		 */
		if (FUNC4(pmd) || FUNC6(pmd))
			return 0;
		if (FUNC7(FUNC3(pmd))) {
			if (!FUNC0(pmd, addr, next, write, pages, nr))
				return 0;
		} else {
			if (!FUNC1(pmd, addr, next, write, pages, nr))
				return 0;
		}
	} while (pmdp++, addr = next, addr != end);

	return 1;
}