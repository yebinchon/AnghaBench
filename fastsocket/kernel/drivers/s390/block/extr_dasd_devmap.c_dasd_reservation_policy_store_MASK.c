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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int /*<<< orphan*/  features; TYPE_1__* device; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FEATURE_FAILONSLCK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t count)
{
	struct dasd_devmap *devmap;
	int rc;

	devmap = FUNC2(FUNC6(dev));
	if (FUNC0(devmap))
		return FUNC1(devmap);
	rc = 0;
	FUNC3(&dasd_devmap_lock);
	if (FUNC5("ignore", buf))
		devmap->features &= ~DASD_FEATURE_FAILONSLCK;
	else if (FUNC5("fail", buf))
		devmap->features |= DASD_FEATURE_FAILONSLCK;
	else
		rc = -EINVAL;
	if (devmap->device)
		devmap->device->features = devmap->features;
	FUNC4(&dasd_devmap_lock);
	if (rc)
		return rc;
	else
		return count;
}