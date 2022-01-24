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
struct it87_data {int sensor; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  IT87_REG_TEMP_ENABLE ; 
 struct it87_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
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

	struct it87_data *data = FUNC0(dev);
	int val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);

	data->sensor &= ~(1 << nr);
	data->sensor &= ~(8 << nr);
	if (val == 2) {	/* backwards compatibility */
		FUNC1(dev, "Sensor type 2 is deprecated, please use 4 "
			 "instead\n");
		val = 4;
	}
	/* 3 = thermal diode; 4 = thermistor; 0 = disabled */
	if (val == 3)
	    data->sensor |= 1 << nr;
	else if (val == 4)
	    data->sensor |= 8 << nr;
	else if (val != 0) {
		FUNC4(&data->update_lock);
		return -EINVAL;
	}
	FUNC2(data, IT87_REG_TEMP_ENABLE, data->sensor);
	FUNC4(&data->update_lock);
	return count;
}