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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static pte_t *FUNC9(struct mm_struct *mm, unsigned long address)
{
	pgd_t *dir;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	pte_t entry;

	dir = FUNC1(mm, address);
	if (FUNC0(*dir))
		return NULL;

	pud = FUNC8(dir, address);
	if (FUNC7(*pud))
		return NULL;

	pmd = FUNC3(pud, address);
	if (FUNC2(*pmd))
		return NULL;

	pte = FUNC5(pmd, address);
	entry = *pte;
	if (FUNC4(entry) || !FUNC6(entry))
		return NULL;

	return pte;
}