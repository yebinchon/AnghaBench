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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct mm_struct *mm,
				unsigned long protection_flags,
                                unsigned long long textaccess,
				unsigned long address)
{
	pgd_t *dir;
	pud_t *pud;
	pmd_t *pmd;
	static pte_t *pte;
	pte_t entry;

	dir = FUNC1(address);

	pud = FUNC9(dir, address);
	if (FUNC8(pud))
		return 0;

	pmd = FUNC3(pud, address);
	if (FUNC2(pmd))
		return 0;

	pte = FUNC5(pmd, address);
	entry = *pte;

	if (FUNC4(entry) || !FUNC6(entry))
		return 0;
	if ((FUNC7(entry) & protection_flags) != protection_flags)
		return 0;

        FUNC0(address, textaccess, pte);

	return 1;
}