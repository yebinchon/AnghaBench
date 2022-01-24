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
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 unsigned long PAGE_SHIFT ; 
 int _PAGE_PRESENT ; 
 int _PAGE_TABLE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(
	pgd_t *pgd, pmd_t *pmd, pte_t *pte,
	unsigned long vaddr, unsigned long paddr)
{
	pud_t *pud;

	pgd += FUNC4(vaddr);
#ifdef CONFIG_X86_PAE
	if (!(pgd_val(*pgd) & _PAGE_PRESENT))
		set_pgd(pgd, __pgd(__pa(pmd) | _PAGE_PRESENT));
#endif
	pud = FUNC9(pgd, vaddr);
	pmd = FUNC6(pud, vaddr);
	if (!(FUNC7(*pmd) & _PAGE_PRESENT))
		FUNC11(pmd, FUNC2(FUNC0(pte) | _PAGE_TABLE));
	pte = FUNC8(pmd, vaddr);
	FUNC12(pte, FUNC3(paddr >> PAGE_SHIFT, PAGE_KERNEL_EXEC));
}