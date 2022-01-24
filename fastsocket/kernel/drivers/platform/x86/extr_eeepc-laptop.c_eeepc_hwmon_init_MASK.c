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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 struct device* eeepc_hwmon_device ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hwmon_attribute_group ; 
 struct device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct device *hwmon;
	int result;

	hwmon = FUNC3(dev);
	if (FUNC0(hwmon)) {
		FUNC4("Could not register eeepc hwmon device\n");
		eeepc_hwmon_device = NULL;
		return FUNC1(hwmon);
	}
	eeepc_hwmon_device = hwmon;
	result = FUNC5(&hwmon->kobj,
				    &hwmon_attribute_group);
	if (result)
		FUNC2();
	return result;
}