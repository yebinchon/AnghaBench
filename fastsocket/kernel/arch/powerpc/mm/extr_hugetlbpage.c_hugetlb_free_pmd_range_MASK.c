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
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 unsigned long PUD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mmu_gather *tlb, pud_t *pud,
				   unsigned long addr, unsigned long end,
				   unsigned long floor, unsigned long ceiling,
				   unsigned int psize)
{
	pmd_t *pmd;
	unsigned long next;
	unsigned long start;

	start = addr;
	pmd = FUNC4(pud, addr);
	do {
		next = FUNC1(addr, end);
		if (FUNC3(*pmd))
			continue;
		FUNC0(tlb, (hugepd_t *)pmd, psize);
	} while (pmd++, addr = next, addr != end);

	start &= PUD_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PUD_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pmd = FUNC4(pud, start);
	FUNC5(pud);
	FUNC2(tlb, pmd, start);
}