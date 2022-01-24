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
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 

pte_t *
FUNC5(struct mm_struct *mm, unsigned long addr, unsigned long sz,
	       bool *shared)
{
	unsigned long taddr = FUNC0(addr);
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte = NULL;

	pgd = FUNC1(mm, taddr);
	pud = FUNC4(mm, pgd, taddr);
	if (pud) {
		pmd = FUNC2(mm, pud, taddr);
		if (pmd)
			pte = FUNC3(mm, pmd, taddr);
	}
	return pte;
}