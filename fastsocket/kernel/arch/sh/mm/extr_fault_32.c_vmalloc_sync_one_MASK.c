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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ init_mm ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline pmd_t *FUNC9(pgd_t *pgd, unsigned long address)
{
	unsigned index = FUNC1(address);
	pgd_t *pgd_k;
	pud_t *pud, *pud_k;
	pmd_t *pmd, *pmd_k;

	pgd += index;
	pgd_k = init_mm.pgd + index;

	if (!FUNC2(*pgd_k))
		return NULL;

	pud = FUNC6(pgd, address);
	pud_k = FUNC6(pgd_k, address);
	if (!FUNC7(*pud_k))
		return NULL;

	pmd = FUNC3(pud, address);
	pmd_k = FUNC3(pud_k, address);
	if (!FUNC5(*pmd_k))
		return NULL;

	if (!FUNC5(*pmd))
		FUNC8(pmd, *pmd_k);
	else {
		/*
		 * The page tables are fully synchronised so there must
		 * be another reason for the fault. Return NULL here to
		 * signal that we have not taken care of the fault.
		 */
		FUNC0(FUNC4(*pmd) != FUNC4(*pmd_k));
		return NULL;
	}

	return pmd_k;
}