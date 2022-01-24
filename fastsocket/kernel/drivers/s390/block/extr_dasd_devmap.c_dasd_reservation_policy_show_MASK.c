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
struct dasd_devmap {int features; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int DASD_FEATURE_FAILONSLCK ; 
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 struct dasd_devmap* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct dasd_devmap *devmap;
	int rc = 0;

	devmap = FUNC1(FUNC2(dev));
	if (FUNC0(devmap)) {
		rc = FUNC3(buf, PAGE_SIZE, "ignore\n");
	} else {
		FUNC4(&dasd_devmap_lock);
		if (devmap->features & DASD_FEATURE_FAILONSLCK)
			rc = FUNC3(buf, PAGE_SIZE, "fail\n");
		else
			rc = FUNC3(buf, PAGE_SIZE, "ignore\n");
		FUNC5(&dasd_devmap_lock);
	}
	return rc;
}