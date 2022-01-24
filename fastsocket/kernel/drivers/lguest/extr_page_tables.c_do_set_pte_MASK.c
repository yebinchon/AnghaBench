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
 int _PAGE_ACCESSED ; 
 int _PAGE_DIRTY ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lg_cpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct lg_cpu*,int,unsigned long) ; 
 int /*<<< orphan*/ * FUNC9 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct lg_cpu *cpu, int idx,
		       unsigned long vaddr, pte_t gpte)
{
	/* Look up the matching shadow page directory entry. */
	pgd_t *spgd = FUNC8(cpu, idx, vaddr);
#ifdef CONFIG_X86_PAE
	pmd_t *spmd;
#endif

	/* If the top level isn't present, there's no entry to update. */
	if (FUNC3(*spgd) & _PAGE_PRESENT) {
#ifdef CONFIG_X86_PAE
		spmd = spmd_addr(cpu, *spgd, vaddr);
		if (pmd_flags(*spmd) & _PAGE_PRESENT) {
#endif
			/* Otherwise, start by releasing the existing entry. */
			pte_t *spte = FUNC10(cpu, *spgd, vaddr);
			FUNC6(*spte);

			/*
			 * If they're setting this entry as dirty or accessed,
			 * we might as well put that entry they've given us in
			 * now.  This shaves 10% off a copy-on-write
			 * micro-benchmark.
			 */
			if (FUNC5(gpte) & (_PAGE_DIRTY | _PAGE_ACCESSED)) {
				FUNC1(cpu, gpte);
				FUNC7(spte,
					FUNC2(cpu, gpte,
						FUNC5(gpte) & _PAGE_DIRTY));
			} else {
				/*
				 * Otherwise kill it and we can demand_page()
				 * it in later.
				 */
				FUNC7(spte, FUNC0(0));
			}
#ifdef CONFIG_X86_PAE
		}
#endif
	}
}