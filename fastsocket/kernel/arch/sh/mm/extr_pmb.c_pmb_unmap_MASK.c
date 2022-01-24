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
struct pmb_entry {unsigned long vpn; struct pmb_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pmb_entry*) ; 
 struct pmb_entry* pmb_list ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(unsigned long addr)
{
	struct pmb_entry **p, *pmbe;

	for (p = &pmb_list; (pmbe = *p); p = &pmbe->next)
		if (pmbe->vpn == addr)
			break;

	if (FUNC1(!pmbe))
		return;

	FUNC0(pmbe);
}