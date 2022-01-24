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
typedef  int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long* pwm_automatic; int /*<<< orphan*/  lock; } ;
typedef  long ssize_t ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 long EINVAL ; 
 long FUNC1 (long) ; 
 struct adt7470_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int,long*) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				 struct device_attribute *devattr,
				 const char *buf,
				 size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct i2c_client *client = FUNC8(dev);
	struct adt7470_data *data = FUNC2(client);
	int pwm_auto_reg = FUNC0(attr->index);
	long temp;
	u8 reg;

	if (FUNC7(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC1(temp);
	if (temp < 0)
		return temp;

	FUNC5(&data->lock);
	data->pwm_automatic[attr->index] = temp;
	reg = FUNC3(client, pwm_auto_reg);

	if (!(attr->index % 2)) {
		reg &= 0xF;
		reg |= (temp << 4) & 0xF0;
	} else {
		reg &= 0xF0;
		reg |= temp & 0xF;
	}

	FUNC4(client, pwm_auto_reg, reg);
	FUNC6(&data->lock);

	return count;
}