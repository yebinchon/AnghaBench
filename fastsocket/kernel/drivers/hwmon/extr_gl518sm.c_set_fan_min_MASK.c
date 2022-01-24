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
struct gl518_data {int* fan_min; int beep_mask; int alarm_mask; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL518_REG_ALARM ; 
 int /*<<< orphan*/  GL518_REG_FAN_LIMIT ; 
 void* FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct gl518_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct gl518_data *data = FUNC4(client);
	int nr = FUNC9(attr)->index;
	int regvalue;
	unsigned long val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	regvalue = FUNC2(client, GL518_REG_FAN_LIMIT);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	regvalue = (regvalue & (0xff << (8 * nr)))
		 | (data->fan_min[nr] << (8 * (1 - nr)));
	FUNC3(client, GL518_REG_FAN_LIMIT, regvalue);

	data->beep_mask = FUNC2(client, GL518_REG_ALARM);
	if (data->fan_min[nr] == 0)
		data->alarm_mask &= ~(0x20 << nr);
	else
		data->alarm_mask |= (0x20 << nr);
	data->beep_mask &= data->alarm_mask;
	FUNC3(client, GL518_REG_ALARM, data->beep_mask);

	FUNC6(&data->update_lock);
	return count;
}