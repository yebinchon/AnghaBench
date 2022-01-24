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
struct dasd_device {TYPE_1__* discipline; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct dasd_device *device;
	ssize_t len;

	device = FUNC1(FUNC4(dev));
	if (FUNC0(device))
		goto out;
	else if (!device->discipline) {
		FUNC2(device);
		goto out;
	} else {
		len = FUNC3(buf, PAGE_SIZE, "%s\n",
			       device->discipline->name);
		FUNC2(device);
		return len;
	}
out:
	len = FUNC3(buf, PAGE_SIZE, "none\n");
	return len;
}