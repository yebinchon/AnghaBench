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

/* Variables and functions */
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NR_SPACE_IDS ; 
 unsigned long SHIFT_PER_LONG ; 
 unsigned long SPACEID_SHIFT ; 
 scalar_t__ dirty_space_ids ; 
 unsigned long FUNC1 (long*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ free_space_ids ; 
 int /*<<< orphan*/  sid_lock ; 
 long* space_id ; 
 unsigned long space_id_index ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

unsigned long FUNC5(void)
{
	unsigned long index;

	FUNC3(&sid_lock);

	if (free_space_ids == 0) {
		if (dirty_space_ids != 0) {
			FUNC4(&sid_lock);
			FUNC2(); /* flush_tlb_all() calls recycle_sids() */
			FUNC3(&sid_lock);
		}
		FUNC0(free_space_ids == 0);
	}

	free_space_ids--;

	index = FUNC1(space_id, NR_SPACE_IDS, space_id_index);
	space_id[index >> SHIFT_PER_LONG] |= (1L << (index & (BITS_PER_LONG - 1)));
	space_id_index = index;

	FUNC4(&sid_lock);

	return index << SPACEID_SHIFT;
}