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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int _PAGE_HPTEFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct mm_struct*,unsigned long) ; 
 unsigned int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct hstate* FUNC6 (unsigned long) ; 

void FUNC7(struct mm_struct *mm, unsigned long addr,
		     pte_t *ptep, pte_t pte)
{
	if (FUNC3(*ptep)) {
		/* We open-code pte_clear because we need to pass the right
		 * argument to hpte_need_flush (huge / !huge). Might not be
		 * necessary anymore if we make hpte_need_flush() get the
		 * page size from the slices
		 */
		unsigned int psize = FUNC1(mm, addr);
		unsigned int shift = FUNC2(psize);
		unsigned long sz = ((1UL) << shift);
		struct hstate *hstate = FUNC6(sz);
		FUNC4(mm, addr & hstate->mask, ptep, ~0UL, 1);
	}
	*ptep = FUNC0(FUNC5(pte) & ~_PAGE_HPTEFLAGS);
}