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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct mm_struct *mm, unsigned long addr)
{
	pgd_t *pgd;
	pmd_t *pmd;
	pte_t *pte;
	int retval = 0;

	pgd = FUNC0(mm, addr & PAGE_MASK);
	if (pgd) {
		pmd = FUNC1(FUNC5(pgd, addr & PAGE_MASK),
		                 addr & PAGE_MASK);
		if (pmd && FUNC2(*pmd)) {
			pte = FUNC3(pmd, addr & PAGE_MASK);
			if (pte) {
				retval = (int)FUNC4(*pte);
			}
		}
	}
	return retval;
}