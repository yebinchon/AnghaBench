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
struct mm_struct {int /*<<< orphan*/ * pgd; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  PGALLOC_GFP ; 
 int PREALLOCATED_PMDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pgd_lock ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

pgd_t *FUNC9(struct mm_struct *mm)
{
	pgd_t *pgd;
	pmd_t *pmds[PREALLOCATED_PMDS];

	pgd = (pgd_t *)FUNC0(PGALLOC_GFP);

	if (pgd == NULL)
		goto out;

	mm->pgd = pgd;

	if (FUNC6(pmds) != 0)
		goto out_free_pgd;

	if (FUNC3(mm) != 0)
		goto out_free_pmds;

	/*
	 * Make sure that pre-populating the pmds is atomic with
	 * respect to anything walking the pgd_list, so that they
	 * never see a partially populated pgd.
	 */
	FUNC7(&pgd_lock);

	FUNC4(mm, pgd);
	FUNC5(mm, pgd, pmds);

	FUNC8(&pgd_lock);

	return pgd;

out_free_pmds:
	FUNC2(pmds);
out_free_pgd:
	FUNC1((unsigned long)pgd);
out:
	return NULL;
}