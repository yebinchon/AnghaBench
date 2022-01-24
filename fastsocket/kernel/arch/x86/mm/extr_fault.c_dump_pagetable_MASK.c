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
 int PHYSICAL_PAGE_MASK ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 () ; 

__attribute__((used)) static void FUNC17(unsigned long address)
{
	pgd_t *base = FUNC0(FUNC16() & PHYSICAL_PAGE_MASK);
	pgd_t *pgd = base + FUNC2(address);
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	if (FUNC1(pgd))
		goto bad;

	FUNC9("PGD %lx ", FUNC4(*pgd));

	if (!FUNC3(*pgd))
		goto out;

	pud = FUNC13(pgd, address);
	if (FUNC1(pud))
		goto bad;

	FUNC9("PUD %lx ", FUNC15(*pud));
	if (!FUNC14(*pud) || FUNC12(*pud))
		goto out;

	pmd = FUNC6(pud, address);
	if (FUNC1(pmd))
		goto bad;

	FUNC9("PMD %lx ", FUNC8(*pmd));
	if (!FUNC7(*pmd) || FUNC5(*pmd))
		goto out;

	pte = FUNC10(pmd, address);
	if (FUNC1(pte))
		goto bad;

	FUNC9("PTE %lx", FUNC11(*pte));
out:
	FUNC9("\n");
	return;
bad:
	FUNC9("BAD\n");
}