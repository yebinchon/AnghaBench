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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

pte_t *
FUNC8 (struct mm_struct *mm, unsigned long addr)
{
	unsigned long taddr = FUNC0(addr);
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte = NULL;

	pgd = FUNC1(mm, taddr);
	if (FUNC2(*pgd)) {
		pud = FUNC6(pgd, taddr);
		if (FUNC7(*pud)) {
			pmd = FUNC3(pud, taddr);
			if (FUNC4(*pmd))
				pte = FUNC5(pmd, taddr);
		}
	}

	return pte;
}