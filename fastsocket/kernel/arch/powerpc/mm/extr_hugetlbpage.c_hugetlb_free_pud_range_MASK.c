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
struct mmu_gather {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 unsigned long PGDIR_MASK ; 
 unsigned int PMD_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct mmu_gather *tlb, pgd_t *pgd,
				   unsigned long addr, unsigned long end,
				   unsigned long floor, unsigned long ceiling)
{
	pud_t *pud;
	unsigned long next;
	unsigned long start;
	unsigned int shift;
	unsigned int psize = FUNC1(tlb->mm, addr);
	shift = FUNC3(psize);

	start = addr;
	pud = FUNC9(pgd, addr);
	do {
		next = FUNC5(addr, end);
		if (shift < PMD_SHIFT) {
			if (FUNC8(pud))
				continue;
			FUNC2(tlb, pud, addr, next, floor,
					       ceiling, psize);
		} else {
			if (FUNC7(*pud))
				continue;
			FUNC0(tlb, (hugepd_t *)pud, psize);
		}
	} while (pud++, addr = next, addr != end);

	start &= PGDIR_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PGDIR_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pud = FUNC9(pgd, start);
	FUNC4(pgd);
	FUNC6(tlb, pud, start);
}