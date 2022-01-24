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
struct lg_cpu {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static pte_t *FUNC8(struct lg_cpu *cpu, pgd_t spgd, unsigned long vaddr)
{
#ifdef CONFIG_X86_PAE
	pmd_t *pmd = spmd_addr(cpu, spgd, vaddr);
	pte_t *page = __va(pmd_pfn(*pmd) << PAGE_SHIFT);

	/* You should never call this if the PMD entry wasn't valid */
	BUG_ON(!(pmd_flags(*pmd) & _PAGE_PRESENT));
#else
	pte_t *page = FUNC1(FUNC3(spgd) << PAGE_SHIFT);
	/* You should never call this if the PGD entry wasn't valid */
	FUNC0(!(FUNC2(spgd) & _PAGE_PRESENT));
#endif

	return &page[FUNC6(vaddr)];
}