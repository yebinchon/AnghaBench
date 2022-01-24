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
typedef  int /*<<< orphan*/  moduleid_t ;
typedef  int /*<<< orphan*/  geoid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int num_cnodes ; 
 scalar_t__ FUNC7 (char*,int*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC8(char *location)
{
	int cnode;
	geoid_t geoid;
	moduleid_t module_id;
	int rack, bay, slot, slab;
	int this_rack, this_bay, this_slot, this_slab;

	if (FUNC7(location, &rack, &bay, &slot, &slab))
		return -1;

	/*
	 * FIXME: replace with cleaner for_each_XXX macro which addresses
	 * both compute and IO nodes once ACPI3.0 is available.
	 */
	for (cnode = 0; cnode < num_cnodes; cnode++) {
		geoid = FUNC3(cnode);
		module_id = FUNC4(geoid);
		this_rack = FUNC1(module_id);
		this_bay = FUNC0(module_id);
		this_slot = FUNC6(geoid);
		this_slab = FUNC5(geoid);
		if (rack == this_rack && bay == this_bay &&
			slot == this_slot && slab == this_slab) {
			break;
		}
	}

	return FUNC2(cnode) ? cnode : -1;
}