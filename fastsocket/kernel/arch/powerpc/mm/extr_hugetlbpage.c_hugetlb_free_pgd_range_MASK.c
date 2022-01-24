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
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ PUD_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * mmu_huge_psizes ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC11(struct mmu_gather *tlb,
			    unsigned long addr, unsigned long end,
			    unsigned long floor, unsigned long ceiling)
{
	pgd_t *pgd;
	unsigned long next;
	unsigned long start;

	/*
	 * Comments below take from the normal free_pgd_range().  They
	 * apply here too.  The tests against HUGEPD_MASK below are
	 * essential, because we *don't* test for this at the bottom
	 * level.  Without them we'll attempt to free a hugepte table
	 * when we unmap just part of it, even if there are other
	 * active mappings using it.
	 *
	 * The next few lines have given us lots of grief...
	 *
	 * Why are we testing HUGEPD* at this top level?  Because
	 * often there will be no work to do at all, and we'd prefer
	 * not to go all the way down to the bottom just to discover
	 * that.
	 *
	 * Why all these "- 1"s?  Because 0 represents both the bottom
	 * of the address space and the top of it (using -1 for the
	 * top wouldn't help much: the masks would do the wrong thing).
	 * The rule is that addr 0 and floor 0 refer to the bottom of
	 * the address space, but end 0 and ceiling 0 refer to the top
	 * Comparisons need to use "end - 1" and "ceiling - 1" (though
	 * that end 0 case should be mythical).
	 *
	 * Wherever addr is brought up or ceiling brought down, we
	 * must be careful to reject "the opposite 0" before it
	 * confuses the subsequent tests.  But what about where end is
	 * brought down by HUGEPD_SIZE below? no, end can't go down to
	 * 0 there.
	 *
	 * Whereas we round start (addr) and ceiling down, by different
	 * masks at different levels, in order to test whether a table
	 * now has no other vmas using it, so can be freed, we don't
	 * bother to round floor or end up - the tests don't need that.
	 */
	unsigned int psize = FUNC4(tlb->mm, addr);

	addr &= FUNC1(psize);
	if (addr < floor) {
		addr += FUNC2(psize);
		if (!addr)
			return;
	}
	if (ceiling) {
		ceiling &= FUNC1(psize);
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		end -= FUNC2(psize);
	if (addr > end - 1)
		return;

	start = addr;
	pgd = FUNC10(tlb->mm, addr);
	do {
		psize = FUNC4(tlb->mm, addr);
		FUNC0(!mmu_huge_psizes[psize]);
		next = FUNC7(addr, end);
		if (FUNC6(psize) < PUD_SHIFT) {
			if (FUNC9(pgd))
				continue;
			FUNC5(tlb, pgd, addr, next, floor, ceiling);
		} else {
			if (FUNC8(*pgd))
				continue;
			FUNC3(tlb, (hugepd_t *)pgd, psize);
		}
	} while (pgd++, addr = next, addr != end);
}