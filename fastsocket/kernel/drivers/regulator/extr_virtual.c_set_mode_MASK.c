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
struct virtual_consumer_data {unsigned int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  regulator; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned int REGULATOR_MODE_FAST ; 
 unsigned int REGULATOR_MODE_IDLE ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct virtual_consumer_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct virtual_consumer_data *data = FUNC1(dev);
	unsigned int mode;
	int ret;

	/*
	 * sysfs_streq() doesn't need the \n's, but we add them so the strings
	 * will be shared with show_mode(), above.
	 */
	if (FUNC5(buf, "fast\n"))
		mode = REGULATOR_MODE_FAST;
	else if (FUNC5(buf, "normal\n"))
		mode = REGULATOR_MODE_NORMAL;
	else if (FUNC5(buf, "idle\n"))
		mode = REGULATOR_MODE_IDLE;
	else if (FUNC5(buf, "standby\n"))
		mode = REGULATOR_MODE_STANDBY;
	else {
		FUNC0(dev, "Configuring invalid mode\n");
		return count;
	}

	FUNC2(&data->lock);
	ret = FUNC4(data->regulator, mode);
	if (ret == 0)
		data->mode = mode;
	else
		FUNC0(dev, "Failed to configure mode: %d\n", ret);
	FUNC3(&data->lock);

	return count;
}