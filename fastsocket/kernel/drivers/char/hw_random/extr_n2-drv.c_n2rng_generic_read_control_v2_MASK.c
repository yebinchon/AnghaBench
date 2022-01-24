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
 unsigned long HV_EBUSY ; 
 unsigned long HV_EOK ; 
 unsigned long HV_EWOULDBLOCK ; 
 int N2RNG_BLOCK_LIMIT ; 
 int N2RNG_BUSY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned long FUNC3(unsigned long ra,
						   unsigned long unit)
{
	unsigned long hv_err, state, ticks, watchdog_delta, watchdog_status;
	int block = 0, busy = 0;

	while (1) {
		hv_err = FUNC1(ra, unit, &state,
					       &ticks,
					       &watchdog_delta,
					       &watchdog_status);
		if (hv_err == HV_EOK)
			break;

		if (hv_err == HV_EBUSY) {
			if (++busy >= N2RNG_BUSY_LIMIT)
				break;

			FUNC2(1);
		} else if (hv_err == HV_EWOULDBLOCK) {
			if (++block >= N2RNG_BLOCK_LIMIT)
				break;

			FUNC0(ticks);
		} else
			break;
	}

	return hv_err;
}