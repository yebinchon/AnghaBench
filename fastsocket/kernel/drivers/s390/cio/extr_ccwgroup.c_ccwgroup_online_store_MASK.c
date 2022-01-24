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
struct device {int /*<<< orphan*/  driver; } ;
struct ccwgroup_driver {int /*<<< orphan*/  owner; } ;
struct ccwgroup_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 int FUNC0 (struct ccwgroup_device*) ; 
 int FUNC1 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct ccwgroup_device* FUNC4 (struct device*) ; 
 struct ccwgroup_driver* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC7 (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct ccwgroup_device *gdev;
	struct ccwgroup_driver *gdrv;
	unsigned long value;
	int ret;

	if (!dev->driver)
		return -ENODEV;

	gdev = FUNC4(dev);
	gdrv = FUNC5(dev->driver);

	if (!FUNC6(gdrv->owner))
		return -EINVAL;

	ret = FUNC3(buf, 0, &value);
	if (ret)
		goto out;

	if (value == 1)
		ret = FUNC1(gdev);
	else if (value == 0)
		ret = FUNC0(gdev);
	else
		ret = -EINVAL;
out:
	FUNC2(gdrv->owner);
	return (ret == 0) ? count : ret;
}