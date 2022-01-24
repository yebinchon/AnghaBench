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
 int pp ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct mm_struct *mm, unsigned long addr)
{
	pgd_t *pgd;
	pmd_t *pmd;
	pte_t *pte;

	FUNC3(" pte @ 0x%8lx: ", addr);
	pgd = FUNC0(mm, addr & PAGE_MASK);
	if (pgd) {
		pmd = FUNC1(FUNC6(pgd, addr & PAGE_MASK),
		                 addr & PAGE_MASK);
		if (pmd && FUNC2(*pmd)) {
			pte = FUNC4(pmd, addr & PAGE_MASK);
			if (pte) {
				FUNC3(" (0x%08lx)->(0x%08lx)->0x%08lx\n",
				        (long)pgd, (long)pte, (long)FUNC5(*pte));
#define pp ((long)pte_val(*pte))
				FUNC3(" RPN: %05lx PP: %lx SPS: %lx SH: %lx "
				       "CI: %lx v: %lx\n",
				       pp>>12,    /* rpn */
				       (pp>>10)&3, /* pp */
				       (pp>>3)&1, /* small */
				       (pp>>2)&1, /* shared */
				       (pp>>1)&1, /* cache inhibit */
				       pp&1       /* valid */
				       );
#undef pp
			}
			else {
				FUNC3("no pte\n");
			}
		}
		else {
			FUNC3("no pmd\n");
		}
	}
	else {
		FUNC3("no pgd\n");
	}
}