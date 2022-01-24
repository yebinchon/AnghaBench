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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {int mode; int /*<<< orphan*/ * pt_root; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct protection_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 *FUNC8(struct protection_domain *domain,
		      unsigned long address,
		      int end_lvl,
		      u64 **pte_page,
		      gfp_t gfp)
{
	u64 *pte, *page;
	int level;

	while (address > FUNC4(domain->mode))
		FUNC6(domain, gfp);

	level =  domain->mode - 1;
	pte   = &domain->pt_root[FUNC2(level, address)];

	while (level > end_lvl) {
		if (!FUNC1(*pte)) {
			page = (u64 *)FUNC5(gfp);
			if (!page)
				return NULL;
			*pte = FUNC3(level, FUNC7(page));
		}

		level -= 1;

		pte = FUNC0(*pte);

		if (pte_page && level == end_lvl)
			*pte_page = pte;

		pte = &pte[FUNC2(level, address)];
	}

	return pte;
}