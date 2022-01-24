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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HvLpIndexInvalid ; 
 int /*<<< orphan*/  handleConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  viomajorsubtype_config ; 
 scalar_t__ viopath_hostLp ; 
 int /*<<< orphan*/  viopath_ourLp ; 

void FUNC3(void)
{
	/*
	 * If this has already been set then we DON'T want to either change
	 * it or re-register the proc file system
	 */
	if (viopath_hostLp != HvLpIndexInvalid)
		return;

	/*
	 * Figure out our hosting partition.  This isn't allowed to change
	 * while we're active
	 */
	viopath_ourLp = FUNC1();
	viopath_hostLp = FUNC0(viopath_ourLp);

	if (viopath_hostLp != HvLpIndexInvalid)
		FUNC2(viomajorsubtype_config, handleConfig);
}