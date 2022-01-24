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
struct userspace_consumer_data {int enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct userspace_consumer_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct userspace_consumer_data *data = FUNC1(dev);
	bool enabled;
	int ret;

	/*
	 * sysfs_streq() doesn't need the \n's, but we add them so the strings
	 * will be shared with show_state(), above.
	 */
	if (FUNC6(buf, "enabled\n") || FUNC6(buf, "1"))
		enabled = true;
	else if (FUNC6(buf, "disabled\n") || FUNC6(buf, "0"))
		enabled = false;
	else {
		FUNC0(dev, "Configuring invalid mode\n");
		return count;
	}

	FUNC2(&data->lock);
	if (enabled != data->enabled) {
		if (enabled)
			ret = FUNC5(data->num_supplies,
						    data->supplies);
		else
			ret = FUNC4(data->num_supplies,
						     data->supplies);

		if (ret == 0)
			data->enabled = enabled;
		else
			FUNC0(dev, "Failed to configure state: %d\n", ret);
	}
	FUNC3(&data->lock);

	return count;
}