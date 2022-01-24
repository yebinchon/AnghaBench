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
struct lm63_data {int valid; int config; int* fan; int pwm1_freq; int pwm1_value; int* temp8; int* temp11; int temp2_crit_hyst; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  LM63_REG_ALERT_STATUS ; 
 int /*<<< orphan*/  LM63_REG_LOCAL_HIGH ; 
 int /*<<< orphan*/  LM63_REG_LOCAL_TEMP ; 
 int /*<<< orphan*/  LM63_REG_PWM_FREQ ; 
 int /*<<< orphan*/  LM63_REG_PWM_VALUE ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_HIGH_LSB ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_HIGH_MSB ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_LOW_LSB ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_LOW_MSB ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TCRIT ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TCRIT_HYST ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TEMP_LSB ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TEMP_MSB ; 
 int /*<<< orphan*/  LM63_REG_TACH_COUNT_LSB ; 
 int /*<<< orphan*/  LM63_REG_TACH_COUNT_MSB ; 
 int /*<<< orphan*/  LM63_REG_TACH_LIMIT_LSB ; 
 int /*<<< orphan*/  LM63_REG_TACH_LIMIT_MSB ; 
 struct lm63_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static struct lm63_data *FUNC6(struct device *dev)
{
	struct i2c_client *client = FUNC5(dev);
	struct lm63_data *data = FUNC0(client);

	FUNC2(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + HZ) || !data->valid) {
		if (data->config & 0x04) { /* tachometer enabled  */
			/* order matters for fan1_input */
			data->fan[0] = FUNC1(client,
				       LM63_REG_TACH_COUNT_LSB) & 0xFC;
			data->fan[0] |= FUNC1(client,
					LM63_REG_TACH_COUNT_MSB) << 8;
			data->fan[1] = (FUNC1(client,
					LM63_REG_TACH_LIMIT_LSB) & 0xFC)
				     | (FUNC1(client,
					LM63_REG_TACH_LIMIT_MSB) << 8);
		}

		data->pwm1_freq = FUNC1(client,
				  LM63_REG_PWM_FREQ);
		if (data->pwm1_freq == 0)
			data->pwm1_freq = 1;
		data->pwm1_value = FUNC1(client,
				   LM63_REG_PWM_VALUE);

		data->temp8[0] = FUNC1(client,
				 LM63_REG_LOCAL_TEMP);
		data->temp8[1] = FUNC1(client,
				 LM63_REG_LOCAL_HIGH);

		/* order matters for temp2_input */
		data->temp11[0] = FUNC1(client,
				  LM63_REG_REMOTE_TEMP_MSB) << 8;
		data->temp11[0] |= FUNC1(client,
				   LM63_REG_REMOTE_TEMP_LSB);
		data->temp11[1] = (FUNC1(client,
				  LM63_REG_REMOTE_LOW_MSB) << 8)
				| FUNC1(client,
				  LM63_REG_REMOTE_LOW_LSB);
		data->temp11[2] = (FUNC1(client,
				  LM63_REG_REMOTE_HIGH_MSB) << 8)
				| FUNC1(client,
				  LM63_REG_REMOTE_HIGH_LSB);
		data->temp8[2] = FUNC1(client,
				 LM63_REG_REMOTE_TCRIT);
		data->temp2_crit_hyst = FUNC1(client,
					LM63_REG_REMOTE_TCRIT_HYST);

		data->alarms = FUNC1(client,
			       LM63_REG_ALERT_STATUS) & 0x7F;

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return data;
}