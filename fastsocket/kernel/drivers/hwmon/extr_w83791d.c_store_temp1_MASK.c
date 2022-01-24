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
struct w83791d_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp1; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/ * W83791D_REG_TEMP1 ; 
 struct w83791d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *devattr,
				const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct i2c_client *client = FUNC5(dev);
	struct w83791d_data *data = FUNC1(client);
	long val = FUNC4(buf, NULL, 10);
	int nr = attr->index;

	FUNC2(&data->update_lock);
	data->temp1[nr] = FUNC0(val);
	FUNC7(client, W83791D_REG_TEMP1[nr], data->temp1[nr]);
	FUNC3(&data->update_lock);
	return count;
}