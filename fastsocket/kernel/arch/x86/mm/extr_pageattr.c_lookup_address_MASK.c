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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned int PG_LEVEL_1G ; 
 unsigned int PG_LEVEL_2M ; 
 unsigned int PG_LEVEL_4K ; 
 unsigned int PG_LEVEL_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

pte_t *FUNC11(unsigned long address, unsigned int *level)
{
	pgd_t *pgd = FUNC1(address);
	pud_t *pud;
	pmd_t *pmd;

	*level = PG_LEVEL_NONE;

	if (FUNC0(*pgd))
		return NULL;

	pud = FUNC9(pgd, address);
	if (FUNC8(*pud))
		return NULL;

	*level = PG_LEVEL_1G;
	if (FUNC7(*pud) || !FUNC10(*pud))
		return (pte_t *)pud;

	pmd = FUNC4(pud, address);
	if (FUNC3(*pmd))
		return NULL;

	*level = PG_LEVEL_2M;
	if (FUNC2(*pmd) || !FUNC5(*pmd))
		return (pte_t *)pmd;

	*level = PG_LEVEL_4K;

	return FUNC6(pmd, address);
}