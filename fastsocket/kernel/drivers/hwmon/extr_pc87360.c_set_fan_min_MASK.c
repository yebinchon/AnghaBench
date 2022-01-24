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
struct sensor_device_attribute {size_t index; } ;
struct pc87360_data {int* fan_status; int* fan; int* fan_min; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_FAN ; 
 int /*<<< orphan*/  NO_BANK ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 struct pc87360_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pc87360_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 long FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *devattr, const char *buf,
	size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct pc87360_data *data = FUNC4(dev);
	long fan_min = FUNC8(buf, NULL, 10);

	FUNC5(&data->update_lock);
	fan_min = FUNC1(fan_min, FUNC0(data->fan_status[attr->index]));

	/* If it wouldn't fit, change clock divisor */
	while (fan_min > 255
	    && (data->fan_status[attr->index] & 0x60) != 0x60) {
		fan_min >>= 1;
		data->fan[attr->index] >>= 1;
		data->fan_status[attr->index] += 0x20;
	}
	data->fan_min[attr->index] = fan_min > 255 ? 255 : fan_min;
	FUNC7(data, LD_FAN, NO_BANK, FUNC2(attr->index),
			    data->fan_min[attr->index]);

	/* Write new divider, preserve alarm bits */
	FUNC7(data, LD_FAN, NO_BANK, FUNC3(attr->index),
			    data->fan_status[attr->index] & 0xF9);
	FUNC6(&data->update_lock);

	return count;
}