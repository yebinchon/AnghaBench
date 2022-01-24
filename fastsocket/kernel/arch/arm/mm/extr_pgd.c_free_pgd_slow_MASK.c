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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,int /*<<< orphan*/ ) ; 

void FUNC9(struct mm_struct *mm, pgd_t *pgd)
{
	pmd_t *pmd;
	pgtable_t pte;

	if (!pgd)
		return;

	/* pgd is always present and good */
	pmd = FUNC6(pgd, 0);
	if (FUNC5(*pmd))
		goto free;
	if (FUNC2(*pmd)) {
		FUNC1(*pmd);
		FUNC3(pmd);
		goto free;
	}

	pte = FUNC7(*pmd);
	FUNC3(pmd);
	FUNC8(mm, pte);
	FUNC4(mm, pmd);
free:
	FUNC0((unsigned long) pgd, 2);
}