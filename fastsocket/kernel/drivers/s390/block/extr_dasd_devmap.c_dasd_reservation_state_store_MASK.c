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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_LOCK_STOLEN ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dasd_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct dasd_device *device;
	int rc = 0;

	device = FUNC2(FUNC5(dev));
	if (FUNC0(device))
		return -ENODEV;
	if (FUNC4("reset", buf))
		FUNC1(DASD_FLAG_LOCK_STOLEN, &device->flags);
	else
		rc = -EINVAL;
	FUNC3(device);

	if (rc)
		return rc;
	else
		return count;
}