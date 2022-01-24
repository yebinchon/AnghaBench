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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PTRS_PER_PGD ; 
 int PTRS_PER_PMD ; 
 int USER_PTRS_PER_PGD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  pgd_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ swapper_pg_dir ; 

void FUNC5(void *pgd)
{
	unsigned long flags;

	if (PTRS_PER_PMD == 1)
		FUNC3(&pgd_lock, flags);

	FUNC0((pgd_t *)pgd + USER_PTRS_PER_PGD,
			swapper_pg_dir + USER_PTRS_PER_PGD,
			(PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));

	if (PTRS_PER_PMD > 1)
		return;

	FUNC2(pgd);
	FUNC4(&pgd_lock, flags);
	FUNC1(pgd, 0, USER_PTRS_PER_PGD * sizeof(pgd_t));
}