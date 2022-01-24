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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int /*<<< orphan*/  flags; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE_RUNNING ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct ccw_device*) ; 
 struct dasd_device* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC7(dev);
	struct dasd_device *device;
	int rc;

	device = FUNC3(cdev);
	if (FUNC0(device)) {
		rc = FUNC1(device);
		goto out;
	}

	if (FUNC6(DASD_FLAG_OFFLINE, &device->flags) ||
	    FUNC6(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/* Already doing offline processing */
		FUNC4(device);
		rc = -EBUSY;
		goto out;
	}

	FUNC5(DASD_FLAG_SAFE_OFFLINE, &device->flags);
	FUNC4(device);

	rc = FUNC2(cdev);

out:
	return rc ? rc : count;
}