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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int _PAGE_PRESENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pmd_t *FUNC7(pgd_t *pgd)
{
	pud_t *pud;
	pmd_t *pmd_table;

#ifdef CONFIG_X86_PAE
	pmd_table = (pmd_t *)get_safe_page(GFP_ATOMIC);
	if (!pmd_table)
		return NULL;

	set_pgd(pgd, __pgd(__pa(pmd_table) | _PAGE_PRESENT));
	pud = pud_offset(pgd, 0);

	BUG_ON(pmd_table != pmd_offset(pud, 0));
#else
	pud = FUNC5(pgd, 0);
	pmd_table = FUNC4(pud, 0);
#endif

	return pmd_table;
}