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
 int FIRST_KERNEL_PGD_NR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PTRS_PER_PGD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

pgd_t *FUNC15(struct mm_struct *mm)
{
	pgd_t *new_pgd, *init_pgd;
	pmd_t *new_pmd, *init_pmd;
	pte_t *new_pte, *init_pte;

	new_pgd = (pgd_t *)FUNC0(GFP_KERNEL, 2);
	if (!new_pgd)
		goto no_pgd;

	FUNC4(new_pgd, 0, FIRST_KERNEL_PGD_NR * sizeof(pgd_t));

	/*
	 * Copy over the kernel and IO PGD entries
	 */
	init_pgd = FUNC5(0);
	FUNC3(new_pgd + FIRST_KERNEL_PGD_NR, init_pgd + FIRST_KERNEL_PGD_NR,
		       (PTRS_PER_PGD - FIRST_KERNEL_PGD_NR) * sizeof(pgd_t));

	FUNC1(new_pgd, PTRS_PER_PGD * sizeof(pgd_t));

	if (!FUNC14()) {
		/*
		 * On ARM, first page must always be allocated since it
		 * contains the machine vectors.
		 */
		new_pmd = FUNC6(mm, new_pgd, 0);
		if (!new_pmd)
			goto no_pmd;

		new_pte = FUNC9(mm, new_pmd, 0);
		if (!new_pte)
			goto no_pte;

		init_pmd = FUNC8(init_pgd, 0);
		init_pte = FUNC10(init_pmd, 0);
		FUNC13(new_pte, *init_pte, 0);
		FUNC12(init_pte);
		FUNC11(new_pte);
	}

	return new_pgd;

no_pte:
	FUNC7(mm, new_pmd);
no_pmd:
	FUNC2((unsigned long)new_pgd, 2);
no_pgd:
	return NULL;
}