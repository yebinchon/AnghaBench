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
struct mem_type {unsigned long prot_sect; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ PGDIR_SIZE ; 
 unsigned long PMD_SECT_SUPER ; 
 int SUPERSECTION_SIZE ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,size_t) ; 

__attribute__((used)) static int
FUNC6(unsigned long virt, unsigned long pfn,
			 size_t size, const struct mem_type *type)
{
	unsigned long addr = virt, end = virt + size;
	pgd_t *pgd;

	/*
	 * Remove and free any PTE-based mapping, and
	 * sync the current kernel mapping.
	 */
	FUNC5(virt, size);

	pgd = FUNC3(virt);
	do {
		unsigned long super_pmd_val, i;

		super_pmd_val = FUNC0(pfn) | type->prot_sect |
				PMD_SECT_SUPER;
		super_pmd_val |= ((pfn >> (32 - PAGE_SHIFT)) & 0xf) << 20;

		for (i = 0; i < 8; i++) {
			pmd_t *pmd = FUNC4(pgd, addr);

			pmd[0] = FUNC1(super_pmd_val);
			pmd[1] = FUNC1(super_pmd_val);
			FUNC2(pmd);

			addr += PGDIR_SIZE;
			pgd++;
		}

		pfn += SUPERSECTION_SIZE >> PAGE_SHIFT;
	} while (addr < end);

	return 0;
}