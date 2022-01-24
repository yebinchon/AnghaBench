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
struct pmb_entry {scalar_t__ entry; struct pmb_entry* link; } ;

/* Variables and functions */
 scalar_t__ PMB_NO_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pmb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmb_entry*) ; 
 int /*<<< orphan*/  pmb_map ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pmb_entry *pmbe)
{
	FUNC0(!FUNC3(pmbe->entry, &pmb_map));

	do {
		struct pmb_entry *pmblink = pmbe;

		if (pmbe->entry != PMB_NO_ENTRY)
			FUNC1(pmbe);

		pmbe = pmblink->link;

		FUNC2(pmblink);
	} while (pmbe);
}