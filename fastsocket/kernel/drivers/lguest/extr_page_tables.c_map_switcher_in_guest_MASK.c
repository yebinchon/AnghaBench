#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lguest_pages {int dummy; } ;
struct lg_cpu {size_t cpu_pgd; int /*<<< orphan*/ * regs_page; TYPE_2__* lg; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_4__ {TYPE_1__* pgdirs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pgdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 int PAGE_SHIFT ; 
 size_t SWITCHER_PGD_INDEX ; 
 size_t SWITCHER_PMD_INDEX ; 
 int __PAGE_KERNEL_EXEC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  switcher_pte_pages ; 

void FUNC10(struct lg_cpu *cpu, struct lguest_pages *pages)
{
	pte_t *switcher_pte_page = FUNC0(switcher_pte_pages);
	pte_t regs_pte;

#ifdef CONFIG_X86_PAE
	pmd_t switcher_pmd;
	pmd_t *pmd_table;

	switcher_pmd = pfn_pmd(__pa(switcher_pte_page) >> PAGE_SHIFT,
			       PAGE_KERNEL_EXEC);

	/* Figure out where the pmd page is, by reading the PGD, and converting
	 * it to a virtual address. */
	pmd_table = __va(pgd_pfn(cpu->lg->
			pgdirs[cpu->cpu_pgd].pgdir[SWITCHER_PGD_INDEX])
								<< PAGE_SHIFT);
	/* Now write it into the shadow page table. */
	set_pmd(&pmd_table[SWITCHER_PMD_INDEX], switcher_pmd);
#else
	pgd_t switcher_pgd;

	/*
	 * Make the last PGD entry for this Guest point to the Switcher's PTE
	 * page for this CPU (with appropriate flags).
	 */
	switcher_pgd = FUNC2(FUNC1(switcher_pte_page) | __PAGE_KERNEL_EXEC);

	cpu->lg->pgdirs[cpu->cpu_pgd].pgdir[SWITCHER_PGD_INDEX] = switcher_pgd;

#endif
	/*
	 * We also change the Switcher PTE page.  When we're running the Guest,
	 * we want the Guest's "regs" page to appear where the first Switcher
	 * page for this CPU is.  This is an optimization: when the Switcher
	 * saves the Guest registers, it saves them into the first page of this
	 * CPU's "struct lguest_pages": if we make sure the Guest's register
	 * page is already mapped there, we don't have to copy them out
	 * again.
	 */
	regs_pte = FUNC5(FUNC1(cpu->regs_page) >> PAGE_SHIFT, PAGE_KERNEL);
	FUNC9(&switcher_pte_page[FUNC7((unsigned long)pages)], regs_pte);
}