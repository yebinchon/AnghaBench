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
struct dasd_devmap {int /*<<< orphan*/  device; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int FUNC1 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct dasd_devmap *devmap;
	int val, rc;
	char *endp;

	devmap = FUNC2(FUNC6(dev));
	if (FUNC0(devmap))
		return FUNC1(devmap);
	if (!devmap->device)
		return -ENODEV;

	val = FUNC5(buf, &endp, 0);
	if (((endp + 1) < (buf + count)) || (val > 1))
		return -EINVAL;

	if (val) {
		rc = FUNC4(devmap->device);
		if (rc)
			return rc;
	} else
		FUNC3(devmap->device);
	return count;
}