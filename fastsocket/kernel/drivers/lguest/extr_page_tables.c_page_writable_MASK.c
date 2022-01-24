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
struct lg_cpu {int /*<<< orphan*/  cpu_pgd; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_RW ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (struct lg_cpu*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct lg_cpu *cpu, unsigned long vaddr)
{
	pgd_t *spgd;
	unsigned long flags;

#ifdef CONFIG_X86_PAE
	pmd_t *spmd;
#endif
	/* Look at the current top level entry: is it present? */
	spgd = FUNC3(cpu, cpu->cpu_pgd, vaddr);
	if (!(FUNC0(*spgd) & _PAGE_PRESENT))
		return false;

#ifdef CONFIG_X86_PAE
	spmd = spmd_addr(cpu, *spgd, vaddr);
	if (!(pmd_flags(*spmd) & _PAGE_PRESENT))
		return false;
#endif

	/*
	 * Check the flags on the pte entry itself: it must be present and
	 * writable.
	 */
	flags = FUNC2(*(FUNC5(cpu, *spgd, vaddr)));

	return (flags & (_PAGE_PRESENT|_PAGE_RW)) == (_PAGE_PRESENT|_PAGE_RW);
}