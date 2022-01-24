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
struct mm_struct {int dummy; } ;
struct hstate {unsigned long mask; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 unsigned int FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 int /*<<< orphan*/ * mmu_huge_psizes ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,unsigned long) ; 
 struct hstate* FUNC8 (unsigned long) ; 

pte_t *FUNC9(struct mm_struct *mm,
			unsigned long addr, unsigned long sz, bool *shared)
{
	pgd_t *pg;
	pud_t *pu;
	pmd_t *pm;
	hugepd_t *hpdp = NULL;
	struct hstate *hstate;
	unsigned int psize;
	hstate = FUNC8(sz);

	psize = FUNC2(mm, addr);
	FUNC0(!mmu_huge_psizes[psize]);

	addr &= hstate->mask;

	pg = FUNC7(mm, addr);
	pu = FUNC4(mm, pg, addr, hstate);

	if (pu) {
		pm = FUNC3(mm, pu, addr, hstate);
		if (pm)
			hpdp = (hugepd_t *)pm;
	}

	if (! hpdp)
		return NULL;

	if (FUNC5(*hpdp) && FUNC1(mm, hpdp, addr, psize))
		return NULL;

	return FUNC6(hpdp, addr, hstate);
}