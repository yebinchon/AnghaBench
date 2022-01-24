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
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

pte_t *FUNC7(struct mm_struct *mm, unsigned long addr)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;

	if (mm == NULL)
		return NULL;

	pgd = FUNC0(mm, addr);
	if (!FUNC1(*pgd))
		return NULL;

	pud = FUNC5(pgd, addr);
	if (!FUNC6(*pud))
		return NULL;

	pmd = FUNC2(pud, addr);
	if (!FUNC3(*pmd))
		return NULL;

	return FUNC4(pmd, addr);
}