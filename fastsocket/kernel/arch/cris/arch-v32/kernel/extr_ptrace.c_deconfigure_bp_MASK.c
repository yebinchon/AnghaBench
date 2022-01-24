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
 scalar_t__ PT_BP ; 
 scalar_t__ PT_BP_CTRL ; 
 long bp_owner ; 
 int FUNC0 (long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (long,scalar_t__,unsigned long) ; 

void FUNC2(long pid)
{
	int bp;

	/* Only deconfigure if the pid is the owner. */
	if (bp_owner != pid)
		return;

	for (bp = 0; bp < 6; bp++) {
		unsigned long tmp;
		/* Deconfigure start and end address (also gets rid of ownership). */
		FUNC1(pid, PT_BP + 3 + (bp * 2), 0);
		FUNC1(pid, PT_BP + 4 + (bp * 2), 0);

		/* Deconfigure relevant bits in control register. */
		tmp = FUNC0(pid, PT_BP_CTRL) & ~(3 << (2 + (bp * 4)));
		FUNC1(pid, PT_BP_CTRL, tmp);
	}
	/* No owner now. */
	bp_owner = 0;
}