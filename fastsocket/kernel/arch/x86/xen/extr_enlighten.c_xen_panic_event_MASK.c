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
struct sched_shutdown {int /*<<< orphan*/  reason; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sched_shutdown*) ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  SCHEDOP_shutdown ; 
 int /*<<< orphan*/  SHUTDOWN_crash ; 

__attribute__((used)) static int
FUNC2(struct notifier_block *this, unsigned long event, void *ptr)
{
	struct sched_shutdown r = { .reason = SHUTDOWN_crash};

	if (FUNC1(SCHEDOP_shutdown, &r))
		FUNC0();
	return NOTIFY_DONE;
}