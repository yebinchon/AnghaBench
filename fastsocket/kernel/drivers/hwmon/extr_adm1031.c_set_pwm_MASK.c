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
struct adm1031_data {int conf1; int* pwm; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int ADM1031_CONF1_AUTO_MODE ; 
 int /*<<< orphan*/  ADM1031_REG_PWM ; 
 size_t EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct adm1031_data *data = FUNC3(client);
	int nr = FUNC8(attr)->index;
	int val = FUNC6(buf, NULL, 10);
	int reg;

	FUNC4(&data->update_lock);
	if ((data->conf1 & ADM1031_CONF1_AUTO_MODE) &&
	    (((val>>4) & 0xf) != 5)) {
		/* In automatic mode, the only PWM accepted is 33% */
		FUNC5(&data->update_lock);
		return -EINVAL;
	}
	data->pwm[nr] = FUNC0(val);
	reg = FUNC1(client, ADM1031_REG_PWM);
	FUNC2(client, ADM1031_REG_PWM,
			    nr ? ((data->pwm[nr] << 4) & 0xf0) | (reg & 0xf)
			    : (data->pwm[nr] & 0xf) | (reg & 0xf0));
	FUNC5(&data->update_lock);
	return count;
}