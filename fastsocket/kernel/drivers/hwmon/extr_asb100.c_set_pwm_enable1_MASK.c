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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int pwm; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_PWM1 ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct asb100_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct asb100_data *data = FUNC1(client);
	unsigned long val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	data->pwm &= 0x0f; /* keep the duty cycle bits */
	data->pwm |= (val ? 0x80 : 0x00);
	FUNC0(client, ASB100_REG_PWM1, data->pwm);
	FUNC3(&data->update_lock);
	return count;
}