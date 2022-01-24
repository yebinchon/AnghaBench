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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 *FUNC4(struct protection_domain *domain,
		      unsigned long address, int map_size)
{
	int level;
	u64 *pte;

	level =  domain->mode - 1;
	pte   = &domain->pt_root[FUNC2(level, address)];

	while (level > map_size) {
		if (!FUNC1(*pte))
			return NULL;

		level -= 1;

		pte = FUNC0(*pte);
		pte = &pte[FUNC2(level, address)];

		if ((FUNC3(*pte) == 0) && level != map_size) {
			pte = NULL;
			break;
		}
	}

	return pte;
}