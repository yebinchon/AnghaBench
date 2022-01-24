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
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWMON_ID_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  hwmon_idr ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void FUNC8(struct device *dev)
{
	int id;

	if (FUNC4(FUNC7(FUNC1(dev), HWMON_ID_FORMAT, &id) == 1)) {
		FUNC2(dev);
		FUNC5(&idr_lock);
		FUNC3(&hwmon_idr, id);
		FUNC6(&idr_lock);
	} else
		FUNC0(dev->parent,
			"hwmon_device_unregister() failed: bad class ID!\n");
}