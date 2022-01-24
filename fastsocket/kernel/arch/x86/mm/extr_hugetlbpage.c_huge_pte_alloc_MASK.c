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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

pte_t *FUNC8(struct mm_struct *mm,
			unsigned long addr, unsigned long sz,
			bool *shared)
{
	pgd_t *pgd;
	pud_t *pud;
	pte_t *pte = NULL;

	pgd = FUNC2(mm, addr);
	pud = FUNC6(mm, pgd, addr);
	if (pud) {
		if (sz == PUD_SIZE) {
			pte = (pte_t *)pud;
		} else {
			FUNC0(sz != PMD_SIZE);
			if (FUNC7(*pud))
				FUNC1(mm, addr, pud, shared);
			pte = (pte_t *) FUNC3(mm, pud, addr);
		}
	}
	FUNC0(pte && !FUNC5(*pte) && !FUNC4(*pte));

	return pte;
}