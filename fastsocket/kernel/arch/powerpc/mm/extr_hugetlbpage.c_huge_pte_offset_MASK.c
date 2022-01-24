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
 unsigned int FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long,struct hstate*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct hstate* FUNC9 (unsigned long) ; 

pte_t *FUNC10(struct mm_struct *mm, unsigned long addr)
{
	pgd_t *pg;
	pud_t *pu;
	pmd_t *pm;

	unsigned int psize;
	unsigned int shift;
	unsigned long sz;
	struct hstate *hstate;
	psize = FUNC0(mm, addr);
	shift = FUNC4(psize);
	sz = ((1UL) << shift);
	hstate = FUNC9(sz);

	addr &= hstate->mask;

	pg = FUNC6(mm, addr);
	if (!FUNC5(*pg)) {
		pu = FUNC2(pg, addr, hstate);
		if (!FUNC8(*pu)) {
			pm = FUNC1(pu, addr, hstate);
			if (!FUNC7(*pm))
				return FUNC3((hugepd_t *)pm, addr,
						      hstate);
		}
	}

	return NULL;
}