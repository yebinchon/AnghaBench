#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lg_cpu {TYPE_1__* lg; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {scalar_t__ mem_base; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 unsigned long _PAGE_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lg_cpu*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pte_t FUNC6(struct lg_cpu *cpu, pte_t gpte, int write)
{
	unsigned long pfn, base, flags;

	/*
	 * The Guest sets the global flag, because it thinks that it is using
	 * PGE.  We only told it to use PGE so it would tell us whether it was
	 * flushing a kernel mapping or a userspace mapping.  We don't actually
	 * use the global bit, so throw it away.
	 */
	flags = (FUNC4(gpte) & ~_PAGE_GLOBAL);

	/* The Guest's pages are offset inside the Launcher. */
	base = (unsigned long)cpu->lg->mem_base / PAGE_SIZE;

	/*
	 * We need a temporary "unsigned long" variable to hold the answer from
	 * get_pfn(), because it returns 0xFFFFFFFF on failure, which wouldn't
	 * fit in spte.pfn.  get_pfn() finds the real physical number of the
	 * page, given the virtual number.
	 */
	pfn = FUNC1(base + FUNC5(gpte), write);
	if (pfn == -1UL) {
		FUNC2(cpu, "failed to get page %lu", FUNC5(gpte));
		/*
		 * When we destroy the Guest, we'll go through the shadow page
		 * tables and release_pte() them.  Make sure we don't think
		 * this one is valid!
		 */
		flags = 0;
	}
	/* Now we assemble our shadow PTE from the page number and flags. */
	return FUNC3(pfn, FUNC0(flags));
}