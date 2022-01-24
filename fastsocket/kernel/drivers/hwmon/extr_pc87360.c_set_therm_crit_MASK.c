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
struct pc87360_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_crit; int /*<<< orphan*/  in_vref; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_IN ; 
 int /*<<< orphan*/  PC87365_REG_TEMP_CRIT ; 
 struct pc87360_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pc87360_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr, const char *buf,
	size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct pc87360_data *data = FUNC1(dev);
	long val = FUNC5(buf, NULL, 10);

	FUNC2(&data->update_lock);
	data->in_crit[attr->index-11] = FUNC0(val, data->in_vref);
	FUNC4(data, LD_IN, attr->index, PC87365_REG_TEMP_CRIT,
			    data->in_crit[attr->index-11]);
	FUNC3(&data->update_lock);
	return count;
}