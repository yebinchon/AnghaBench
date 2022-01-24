#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable; int pwm; int /*<<< orphan*/  auto_pwm_min; } ;
struct adm1026_data {int /*<<< orphan*/  update_lock; TYPE_1__ pwm1; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1026_REG_PWM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1026_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr, const char *buf,
		size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct adm1026_data *data = FUNC4(client);
	int val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	data->pwm1.auto_pwm_min = FUNC2(val, 0, 255);
	if (data->pwm1.enable == 2) { /* apply immediately */
		data->pwm1.pwm = FUNC1((data->pwm1.pwm & 0x0f) |
			FUNC0(data->pwm1.auto_pwm_min));
		FUNC3(client, ADM1026_REG_PWM, data->pwm1.pwm);
	}
	FUNC6(&data->update_lock);
	return count;
}