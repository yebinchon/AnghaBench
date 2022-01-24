#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ disable_depth; scalar_t__ request; int /*<<< orphan*/  lock; scalar_t__ request_pending; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 scalar_t__ RPM_REQ_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct device *dev, bool check_resume)
{
	FUNC4(&dev->power.lock);

	if (dev->power.disable_depth > 0) {
		dev->power.disable_depth++;
		goto out;
	}

	/*
	 * Wake up the device if there's a resume request pending, because that
	 * means there probably is some I/O to process and disabling run-time PM
	 * shouldn't prevent the device from processing the I/O.
	 */
	if (check_resume && dev->power.request_pending
	    && dev->power.request == RPM_REQ_RESUME) {
		/*
		 * Prevent suspends and idle notifications from being carried
		 * out after we have woken up the device.
		 */
		FUNC2(dev);

		FUNC1(dev, false);

		FUNC3(dev);
	}

	if (!dev->power.disable_depth++)
		FUNC0(dev);

 out:
	FUNC5(&dev->power.lock);
}