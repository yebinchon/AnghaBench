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
struct trapped_io {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 struct trapped_io* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 

__attribute__((used)) static struct trapped_io *FUNC9(unsigned long address)
{
	pgd_t *pgd_k;
	pud_t *pud_k;
	pmd_t *pmd_k;
	pte_t *pte_k;
	pte_t entry;

	pgd_k = swapper_pg_dir + FUNC1(address);
	if (!FUNC2(*pgd_k))
		return NULL;

	pud_k = FUNC7(pgd_k, address);
	if (!FUNC8(*pud_k))
		return NULL;

	pmd_k = FUNC3(pud_k, address);
	if (!FUNC4(*pmd_k))
		return NULL;

	pte_k = FUNC5(pmd_k, address);
	entry = *pte_k;

	return FUNC0(FUNC6(entry));
}