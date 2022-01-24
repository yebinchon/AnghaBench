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
struct TYPE_2__ {scalar_t__ runtime_status; scalar_t__ disable_depth; int request_pending; scalar_t__ request; int /*<<< orphan*/  work; int /*<<< orphan*/  usage_count; scalar_t__ runtime_error; } ;
struct device {TYPE_1__ power; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 scalar_t__ RPM_REQ_NONE ; 
 scalar_t__ RPM_REQ_RESUME ; 
 scalar_t__ RPM_REQ_SUSPEND ; 
 scalar_t__ RPM_SUSPENDED ; 
 scalar_t__ RPM_SUSPENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  pm_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int retval = 0;

	if (dev->power.runtime_error)
		return -EINVAL;

	if (dev->power.runtime_status == RPM_SUSPENDED)
		retval = 1;
	else if (FUNC0(&dev->power.usage_count) > 0
	    || dev->power.disable_depth > 0)
		retval = -EAGAIN;
	else if (dev->power.runtime_status == RPM_SUSPENDING)
		retval = -EINPROGRESS;
	else if (!FUNC1(dev))
		retval = -EBUSY;
	if (retval < 0)
		return retval;

	FUNC2(dev);

	if (dev->power.request_pending) {
		/*
		 * Pending resume requests take precedence over us, but we can
		 * overtake any other pending request.
		 */
		if (dev->power.request == RPM_REQ_RESUME)
			retval = -EAGAIN;
		else if (dev->power.request != RPM_REQ_SUSPEND)
			dev->power.request = retval ?
						RPM_REQ_NONE : RPM_REQ_SUSPEND;
		return retval;
	} else if (retval) {
		return retval;
	}

	dev->power.request = RPM_REQ_SUSPEND;
	dev->power.request_pending = true;
	FUNC3(pm_wq, &dev->power.work);

	return 0;
}