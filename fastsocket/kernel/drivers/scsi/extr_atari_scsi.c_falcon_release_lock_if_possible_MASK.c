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
struct NCR5380_hostdata {int /*<<< orphan*/  connected; int /*<<< orphan*/  issue_queue; int /*<<< orphan*/  disconnected_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ falcon_dont_release ; 
 int /*<<< orphan*/  falcon_fairness_wait ; 
 scalar_t__ falcon_got_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct NCR5380_hostdata *hostdata)
{
	unsigned long flags;

	if (FUNC0())
		return;

	FUNC2(flags);

	if (falcon_got_lock && !hostdata->disconnected_queue &&
	    !hostdata->issue_queue && !hostdata->connected) {

		if (falcon_dont_release) {
#if 0
			printk("WARNING: Lock release not allowed. Ignored\n");
#endif
			FUNC1(flags);
			return;
		}
		falcon_got_lock = 0;
		FUNC4();
		FUNC5(&falcon_fairness_wait);
	}

	FUNC1(flags);
}