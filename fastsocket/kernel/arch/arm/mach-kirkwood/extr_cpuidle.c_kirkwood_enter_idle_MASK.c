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
struct timeval {int tv_sec; int tv_usec; } ;
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {struct cpuidle_state* states; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDR_OPERATION_BASE ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cpuidle_device *dev,
			       struct cpuidle_state *state)
{
	struct timeval before, after;
	int idle_time;

	FUNC2();
	FUNC1(&before);
	if (state == &dev->states[0])
		/* Wait for interrupt state */
		FUNC0();
	else if (state == &dev->states[1]) {
		/*
		 * Following write will put DDR in self refresh.
		 * Note that we have 256 cycles before DDR puts it
		 * self in self-refresh, so the wait-for-interrupt
		 * call afterwards won't get the DDR from self refresh
		 * mode.
		 */
		FUNC4(0x7, DDR_OPERATION_BASE);
		FUNC0();
	}
	FUNC1(&after);
	FUNC3();
	idle_time = (after.tv_sec - before.tv_sec) * USEC_PER_SEC +
			(after.tv_usec - before.tv_usec);
	return idle_time;
}