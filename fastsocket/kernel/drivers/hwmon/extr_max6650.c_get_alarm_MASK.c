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
struct max6650_data {int alarm; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX6650_REG_ALARM ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct max6650_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr,
			 char *buf)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct max6650_data *data = FUNC1(dev);
	struct i2c_client *client = FUNC5(dev);
	int alarm = 0;

	if (data->alarm & attr->index) {
		FUNC2(&data->update_lock);
		alarm = 1;
		data->alarm &= ~attr->index;
		data->alarm |= FUNC0(client,
							MAX6650_REG_ALARM);
		FUNC3(&data->update_lock);
	}

	return FUNC4(buf, "%d\n", alarm);
}