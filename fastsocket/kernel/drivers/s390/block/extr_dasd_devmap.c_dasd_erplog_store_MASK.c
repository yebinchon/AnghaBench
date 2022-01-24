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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FEATURE_ERPLOG ; 
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 size_t FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct dasd_devmap *devmap;
	int val;
	char *endp;

	devmap = FUNC2(FUNC6(dev));
	if (FUNC0(devmap))
		return FUNC1(devmap);

	val = FUNC3(buf, &endp, 0);
	if (((endp + 1) < (buf + count)) || (val > 1))
		return -EINVAL;

	FUNC4(&dasd_devmap_lock);
	if (val)
		devmap->features |= DASD_FEATURE_ERPLOG;
	else
		devmap->features &= ~DASD_FEATURE_ERPLOG;
	if (devmap->device)
		devmap->device->features = devmap->features;
	FUNC5(&dasd_devmap_lock);
	return count;
}