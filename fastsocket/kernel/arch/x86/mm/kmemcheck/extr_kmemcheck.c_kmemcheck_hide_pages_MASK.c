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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PG_LEVEL_4K ; 
 int _PAGE_HIDDEN ; 
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,unsigned int*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct page *p, unsigned int n)
{
	unsigned int i;

	for (i = 0; i < n; ++i) {
		unsigned long address;
		pte_t *pte;
		unsigned int level;

		address = (unsigned long) FUNC4(&p[i]);
		pte = FUNC3(address, &level);
		FUNC0(!pte);
		FUNC0(level != PG_LEVEL_4K);

		FUNC6(pte, FUNC2(FUNC5(*pte) & ~_PAGE_PRESENT));
		FUNC6(pte, FUNC2(FUNC5(*pte) | _PAGE_HIDDEN));
		FUNC1(address);
	}
}