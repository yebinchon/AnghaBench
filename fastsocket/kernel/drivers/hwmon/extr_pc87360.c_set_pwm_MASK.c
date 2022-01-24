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
struct pc87360_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * pwm; int /*<<< orphan*/  fan_conf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  LD_FAN ; 
 int /*<<< orphan*/  NO_BANK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ) ; 
 struct pc87360_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pc87360_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *devattr, const char *buf,
	size_t count)
{
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct pc87360_data *data = FUNC3(dev);
	long val = FUNC7(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->pwm[attr->index] = FUNC2(val,
			      FUNC0(data->fan_conf, attr->index));
	FUNC6(data, LD_FAN, NO_BANK, FUNC1(attr->index),
			    data->pwm[attr->index]);
	FUNC5(&data->update_lock);
	return count;
}