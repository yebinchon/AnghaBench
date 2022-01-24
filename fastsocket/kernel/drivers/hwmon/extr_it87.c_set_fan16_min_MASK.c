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
struct sensor_device_attribute {int index; } ;
struct it87_data {int* fan_min; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * IT87_REG_FANX_MIN ; 
 int /*<<< orphan*/ * IT87_REG_FAN_MIN ; 
 struct it87_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	int nr = sensor_attr->index;
	struct it87_data *data = FUNC1(dev);
	int val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->fan_min[nr] = FUNC0(val);
	FUNC2(data, IT87_REG_FAN_MIN[nr],
			 data->fan_min[nr] & 0xff);
	FUNC2(data, IT87_REG_FANX_MIN[nr],
			 data->fan_min[nr] >> 8);
	FUNC4(&data->update_lock);
	return count;
}