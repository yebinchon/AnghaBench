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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct asb100_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_max; int* temp_hyst; int vid; int* fan_div; int pwm; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  alarms; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_ALARM1 ; 
 int /*<<< orphan*/  ASB100_REG_ALARM2 ; 
 int /*<<< orphan*/  ASB100_REG_CHIPID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ASB100_REG_PIN ; 
 int /*<<< orphan*/  ASB100_REG_PWM1 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  ASB100_REG_VID_FANDIV ; 
 int HZ ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct asb100_data* FUNC10 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC14 (struct device*) ; 

__attribute__((used)) static struct asb100_data *FUNC15(struct device *dev)
{
	struct i2c_client *client = FUNC14(dev);
	struct asb100_data *data = FUNC10(client);
	int i;

	FUNC11(&data->update_lock);

	if (FUNC13(jiffies, data->last_updated + HZ + HZ / 2)
		|| !data->valid) {

		FUNC9(&client->dev, "starting device update...\n");

		/* 7 voltage inputs */
		for (i = 0; i < 7; i++) {
			data->in[i] = FUNC8(client,
				FUNC2(i));
			data->in_min[i] = FUNC8(client,
				FUNC4(i));
			data->in_max[i] = FUNC8(client,
				FUNC3(i));
		}

		/* 3 fan inputs */
		for (i = 0; i < 3; i++) {
			data->fan[i] = FUNC8(client,
					FUNC0(i));
			data->fan_min[i] = FUNC8(client,
					FUNC1(i));
		}

		/* 4 temperature inputs */
		for (i = 1; i <= 4; i++) {
			data->temp[i-1] = FUNC8(client,
					FUNC5(i));
			data->temp_max[i-1] = FUNC8(client,
					FUNC7(i));
			data->temp_hyst[i-1] = FUNC8(client,
					FUNC6(i));
		}

		/* VID and fan divisors */
		i = FUNC8(client, ASB100_REG_VID_FANDIV);
		data->vid = i & 0x0f;
		data->vid |= (FUNC8(client,
				ASB100_REG_CHIPID) & 0x01) << 4;
		data->fan_div[0] = (i >> 4) & 0x03;
		data->fan_div[1] = (i >> 6) & 0x03;
		data->fan_div[2] = (FUNC8(client,
				ASB100_REG_PIN) >> 6) & 0x03;

		/* PWM */
		data->pwm = FUNC8(client, ASB100_REG_PWM1);

		/* alarms */
		data->alarms = FUNC8(client, ASB100_REG_ALARM1) +
			(FUNC8(client, ASB100_REG_ALARM2) << 8);

		data->last_updated = jiffies;
		data->valid = 1;

		FUNC9(&client->dev, "... device update complete\n");
	}

	FUNC12(&data->update_lock);

	return data;
}