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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int KERNEL_PGD_BOUNDARY ; 
 int PREALLOCATED_PMDS ; 
 int PTRS_PER_PMD ; 
 scalar_t__ PUD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 

__attribute__((used)) static void FUNC4(struct mm_struct *mm, pgd_t *pgd, pmd_t *pmds[])
{
	pud_t *pud;
	unsigned long addr;
	int i;

	if (PREALLOCATED_PMDS == 0) /* Work around gcc-3.4.x bug */
		return;

	pud = FUNC2(pgd, 0);

 	for (addr = i = 0; i < PREALLOCATED_PMDS;
	     i++, pud++, addr += PUD_SIZE) {
		pmd_t *pmd = pmds[i];

		if (i >= KERNEL_PGD_BOUNDARY)
			FUNC0(pmd, (pmd_t *)FUNC1(swapper_pg_dir[i]),
			       sizeof(pmd_t) * PTRS_PER_PMD);

		FUNC3(mm, pud, pmd);
	}
}