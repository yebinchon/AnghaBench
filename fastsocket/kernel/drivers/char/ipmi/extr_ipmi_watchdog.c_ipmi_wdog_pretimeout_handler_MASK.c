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
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 scalar_t__ WDOG_PREOP_GIVE_DATA ; 
 scalar_t__ WDOG_PREOP_PANIC ; 
 scalar_t__ WDOG_PRETIMEOUT_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int data_to_read ; 
 int /*<<< orphan*/  fasync_q ; 
 int /*<<< orphan*/  ipmi_read_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ preaction_val ; 
 int /*<<< orphan*/  preop_panic_excl ; 
 scalar_t__ preop_val ; 
 int pretimeout_since_last_heartbeat ; 
 int /*<<< orphan*/  read_q ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *handler_data)
{
	if (preaction_val != WDOG_PRETIMEOUT_NONE) {
		if (preop_val == WDOG_PREOP_PANIC) {
			if (FUNC0(&preop_panic_excl))
				FUNC2("Watchdog pre-timeout");
		} else if (preop_val == WDOG_PREOP_GIVE_DATA) {
			FUNC3(&ipmi_read_lock);
			data_to_read = 1;
			FUNC5(&read_q);
			FUNC1(&fasync_q, SIGIO, POLL_IN);

			FUNC4(&ipmi_read_lock);
		}
	}

	/*
	 * On some machines, the heartbeat will give an error and not
	 * work unless we re-enable the timer.  So do so.
	 */
	pretimeout_since_last_heartbeat = 1;
}