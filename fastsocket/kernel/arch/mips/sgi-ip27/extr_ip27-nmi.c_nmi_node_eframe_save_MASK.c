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
typedef  scalar_t__ nasid_t ;
typedef  scalar_t__ cnodeid_t ;

/* Variables and functions */
 scalar_t__ CNODEID_NONE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INVALID_NASID ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

void FUNC4(cnodeid_t  cnode)
{
	nasid_t nasid;
	int slice;

	/* Make sure that we have a valid node */
	if (cnode == CNODEID_NONE)
		return;

	nasid = FUNC0(cnode);
	if (nasid == INVALID_NASID)
		return;

	/* Save the registers into eframe for each cpu */
	for (slice = 0; slice < FUNC1(slice); slice++) {
		FUNC2(nasid, slice);
		FUNC3(nasid, slice);
	}
}