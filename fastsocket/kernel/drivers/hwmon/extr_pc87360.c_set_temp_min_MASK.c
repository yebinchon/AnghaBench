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
struct pc87360_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LD_TEMP ; 
 int /*<<< orphan*/  PC87365_REG_TEMP_MIN ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct pc87360_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pc87360_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr, const char *buf,
	size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct pc87360_data *data = FUNC1(dev);
	long val = FUNC5(buf, NULL, 10);

	FUNC2(&data->update_lock);
	data->temp_min[attr->index] = FUNC0(val);
	FUNC4(data, LD_TEMP, attr->index, PC87365_REG_TEMP_MIN,
			    data->temp_min[attr->index]);
	FUNC3(&data->update_lock);
	return count;
}