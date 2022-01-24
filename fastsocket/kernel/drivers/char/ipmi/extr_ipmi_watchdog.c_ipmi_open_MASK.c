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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
#define  WATCHDOG_MINOR 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct inode*) ; 
 int ipmi_start_timer_on_heartbeat ; 
 int /*<<< orphan*/  ipmi_wdog_open ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *ino, struct file *filep)
{
	switch (FUNC1(ino)) {
	case WATCHDOG_MINOR:
		if (FUNC3(0, &ipmi_wdog_open))
			return -EBUSY;

		FUNC0();

		/*
		 * Don't start the timer now, let it start on the
		 * first heartbeat.
		 */
		ipmi_start_timer_on_heartbeat = 1;
		return FUNC2(ino, filep);

	default:
		return (-ENODEV);
	}
}