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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(pud_t *pud_page, unsigned long vaddr, pte_t new_pte)
{
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	pud = pud_page + FUNC3(vaddr);
	pmd = FUNC1(pud, vaddr);
	pte = FUNC2(pmd, vaddr);

	FUNC4(pte, new_pte);

	/*
	 * It's enough to flush this one mapping.
	 * (PGE mappings get flushed as well)
	 */
	FUNC0(vaddr);
}