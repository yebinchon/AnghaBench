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
typedef  int u64 ;

/* Variables and functions */
 int HZ ; 
 int INITIAL_JIFFIES ; 
 int FUNC0 (int) ; 
 int jiffies_64 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  tsc_disabled ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

u64 FUNC3(void)
{
	u64 this_offset;

	/*
	 * Fall back to jiffies if there's no TSC available:
	 * ( But note that we still use it if the TSC is marked
	 *   unstable. We do this because unlike Time Of Day,
	 *   the scheduler clock tolerates small errors and it's
	 *   very important for it to be as fast as the platform
	 *   can achive it. )
	 */
	if (FUNC2(tsc_disabled)) {
		/* No locking but a rare wrong value is not a big deal: */
		return (jiffies_64 - INITIAL_JIFFIES) * (1000000000 / HZ);
	}

	/* read the Time Stamp Counter: */
	FUNC1(this_offset);

	/* return the value in ns */
	return FUNC0(this_offset);
}