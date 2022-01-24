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
struct pmb_entry {unsigned long vpn; unsigned long ppn; unsigned long flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pmb_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pmb_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmb_cache ; 
 int /*<<< orphan*/  FUNC2 (struct pmb_entry*) ; 
 int /*<<< orphan*/  pmb_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct pmb_entry *FUNC5(unsigned long vpn, unsigned long ppn,
			    unsigned long flags)
{
	struct pmb_entry *pmbe;

	pmbe = FUNC1(pmb_cache, GFP_KERNEL);
	if (!pmbe)
		return FUNC0(-ENOMEM);

	pmbe->vpn	= vpn;
	pmbe->ppn	= ppn;
	pmbe->flags	= flags;

	FUNC3(&pmb_list_lock);
	FUNC2(pmbe);
	FUNC4(&pmb_list_lock);

	return pmbe;
}