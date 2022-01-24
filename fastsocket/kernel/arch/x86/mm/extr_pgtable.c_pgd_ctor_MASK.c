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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int KERNEL_PGD_BOUNDARY ; 
 int /*<<< orphan*/  KERNEL_PGD_PTRS ; 
 int PAGETABLE_LEVELS ; 
 int PAGE_SHIFT ; 
 scalar_t__ SHARED_KERNEL_PMD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 

__attribute__((used)) static void FUNC5(struct mm_struct *mm, pgd_t *pgd)
{
	/* If the pgd points to a shared pagetable level (either the
	   ptes in non-PAE, or shared PMD in PAE), then just copy the
	   references from swapper_pg_dir. */
	if (PAGETABLE_LEVELS == 2 ||
	    (PAGETABLE_LEVELS == 3 && SHARED_KERNEL_PMD) ||
	    PAGETABLE_LEVELS == 4) {
		FUNC1(pgd + KERNEL_PGD_BOUNDARY,
				swapper_pg_dir + KERNEL_PGD_BOUNDARY,
				KERNEL_PGD_PTRS);
		FUNC2(FUNC0(pgd) >> PAGE_SHIFT,
					 FUNC0(swapper_pg_dir) >> PAGE_SHIFT,
					 KERNEL_PGD_BOUNDARY,
					 KERNEL_PGD_PTRS);
	}

	/* list required to sync kernel mapping updates */
	if (!SHARED_KERNEL_PMD) {
		FUNC4(pgd, mm);
		FUNC3(pgd);
	}
}