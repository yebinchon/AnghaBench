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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long HPAGE_SIZE ; 
 unsigned long PTRS_PER_PTE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mm_struct *mm, unsigned long *addr, pte_t *ptep)
{
	pgd_t *pgd = FUNC3(mm, *addr);
	pud_t *pud = FUNC5(pgd, *addr);

	FUNC1(FUNC2(FUNC7(ptep)) == 0);
	if (FUNC2(FUNC7(ptep)) == 1)
		return 0;

	FUNC4(pud);
	FUNC6(FUNC7(ptep));
	*addr = FUNC0(*addr, HPAGE_SIZE * PTRS_PER_PTE) - HPAGE_SIZE;
	return 1;
}