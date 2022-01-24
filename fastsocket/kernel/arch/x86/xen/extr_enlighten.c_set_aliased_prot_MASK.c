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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ) ; 
 struct page* FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *v, pgprot_t prot)
{
	int level;
	pte_t *ptep;
	pte_t pte;
	unsigned long pfn;
	struct page *page;

	ptep = FUNC7((unsigned long)v, &level);
	FUNC1(ptep == NULL);

	pfn = FUNC10(*ptep);
	page = FUNC9(pfn);

	pte = FUNC8(pfn, prot);

	if (FUNC2((unsigned long)v, pte, 0))
		FUNC0();

	if (!FUNC4(page)) {
		void *av = FUNC5(FUNC3(pfn));

		if (av != v)
			if (FUNC2((unsigned long)av, pte, 0))
				FUNC0();
	} else
		FUNC6();
}