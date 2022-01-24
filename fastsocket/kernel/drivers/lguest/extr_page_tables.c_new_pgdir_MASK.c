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
struct lg_cpu {unsigned int cpu_pgd; TYPE_1__* lg; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_4__ {unsigned long gpgdir; int /*<<< orphan*/ * pgdir; } ;
struct TYPE_3__ {TYPE_2__* pgdirs; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SWITCHER_PGD_INDEX ; 
 int _PAGE_PRESENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC8(struct lg_cpu *cpu,
			      unsigned long gpgdir,
			      int *blank_pgdir)
{
	unsigned int next;
#ifdef CONFIG_X86_PAE
	pmd_t *pmd_table;
#endif

	/*
	 * We pick one entry at random to throw out.  Choosing the Least
	 * Recently Used might be better, but this is easy.
	 */
	next = FUNC6() % FUNC0(cpu->lg->pgdirs);
	/* If it's never been allocated at all before, try now. */
	if (!cpu->lg->pgdirs[next].pgdir) {
		cpu->lg->pgdirs[next].pgdir =
					(pgd_t *)FUNC5(GFP_KERNEL);
		/* If the allocation fails, just keep using the one we have */
		if (!cpu->lg->pgdirs[next].pgdir)
			next = cpu->cpu_pgd;
		else {
#ifdef CONFIG_X86_PAE
			/*
			 * In PAE mode, allocate a pmd page and populate the
			 * last pgd entry.
			 */
			pmd_table = (pmd_t *)get_zeroed_page(GFP_KERNEL);
			if (!pmd_table) {
				free_page((long)cpu->lg->pgdirs[next].pgdir);
				set_pgd(cpu->lg->pgdirs[next].pgdir, __pgd(0));
				next = cpu->cpu_pgd;
			} else {
				set_pgd(cpu->lg->pgdirs[next].pgdir +
					SWITCHER_PGD_INDEX,
					__pgd(__pa(pmd_table) | _PAGE_PRESENT));
				/*
				 * This is a blank page, so there are no kernel
				 * mappings: caller must map the stack!
				 */
				*blank_pgdir = 1;
			}
#else
			*blank_pgdir = 1;
#endif
		}
	}
	/* Record which Guest toplevel this shadows. */
	cpu->lg->pgdirs[next].gpgdir = gpgdir;
	/* Release all the non-kernel mappings. */
	FUNC3(cpu->lg, next);

	return next;
}