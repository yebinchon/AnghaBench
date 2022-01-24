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
 int /*<<< orphan*/  MPT3SAS_DRIVER_NAME ; 
 int /*<<< orphan*/  MPT3SAS_MINOR ; 
 int /*<<< orphan*/ * async_queue ; 
 int /*<<< orphan*/  ctl_dev ; 
 int /*<<< orphan*/  ctl_poll_wait ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	async_queue = NULL;
	if (FUNC1(&ctl_dev) < 0)
		FUNC2("%s can't register misc device [minor=%d]\n",
		    MPT3SAS_DRIVER_NAME, MPT3SAS_MINOR);

	FUNC0(&ctl_poll_wait);
}