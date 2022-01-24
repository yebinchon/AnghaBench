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
struct TYPE_2__ {scalar_t__ request; scalar_t__ runtime_status; scalar_t__ disable_depth; int /*<<< orphan*/  lock; scalar_t__ timer_expires; int /*<<< orphan*/  suspend_timer; int /*<<< orphan*/  usage_count; scalar_t__ request_pending; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ RPM_REQ_NONE ; 
 scalar_t__ RPM_REQ_RESUME ; 
 scalar_t__ RPM_SUSPENDED ; 
 scalar_t__ RPM_SUSPENDING ; 
 int FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct device *dev, unsigned int delay)
{
	unsigned long flags;
	int retval = 0;

	FUNC6(&dev->power.lock, flags);

	if (dev->power.runtime_error) {
		retval = -EINVAL;
		goto out;
	}

	if (!delay) {
		retval = FUNC0(dev);
		goto out;
	}

	FUNC5(dev);

	if (dev->power.request_pending) {
		/*
		 * Pending resume requests take precedence over us, but any
		 * other pending requests have to be canceled.
		 */
		if (dev->power.request == RPM_REQ_RESUME) {
			retval = -EAGAIN;
			goto out;
		}
		dev->power.request = RPM_REQ_NONE;
	}

	if (dev->power.runtime_status == RPM_SUSPENDED)
		retval = 1;
	else if (dev->power.runtime_status == RPM_SUSPENDING)
		retval = -EINPROGRESS;
	else if (FUNC1(&dev->power.usage_count) > 0
	    || dev->power.disable_depth > 0)
		retval = -EAGAIN;
	else if (!FUNC4(dev))
		retval = -EBUSY;
	if (retval)
		goto out;

	dev->power.timer_expires = jiffies + FUNC3(delay);
	FUNC2(&dev->power.suspend_timer, dev->power.timer_expires);

 out:
	FUNC7(&dev->power.lock, flags);

	return retval;
}