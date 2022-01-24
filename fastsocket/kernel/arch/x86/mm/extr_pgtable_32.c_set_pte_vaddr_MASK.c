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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 

void FUNC12(unsigned long vaddr, pte_t pteval)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	pgd = swapper_pg_dir + FUNC2(vaddr);
	if (FUNC3(*pgd)) {
		FUNC0();
		return;
	}
	pud = FUNC10(pgd, vaddr);
	if (FUNC9(*pud)) {
		FUNC0();
		return;
	}
	pmd = FUNC5(pud, vaddr);
	if (FUNC4(*pmd)) {
		FUNC0();
		return;
	}
	pte = FUNC7(pmd, vaddr);
	if (FUNC8(pteval))
		FUNC11(&init_mm, vaddr, pte, pteval);
	else
		FUNC6(&init_mm, vaddr, pte);

	/*
	 * It's enough to flush this one mapping.
	 * (PGE mappings get flushed as well)
	 */
	FUNC1(vaddr);
}