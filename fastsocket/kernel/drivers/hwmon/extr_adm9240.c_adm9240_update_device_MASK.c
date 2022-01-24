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
struct device {int dummy; } ;
struct adm9240_data {int valid; int* in; int alarms; int temp; int* fan; int* fan_div; int* fan_min; int* in_min; int* in_max; int* temp_max; int vid; int aout; int /*<<< orphan*/  update_lock; void* last_updated_config; void* last_updated_measure; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM9240_REG_ANALOG_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ADM9240_REG_TEMP ; 
 int /*<<< orphan*/  ADM9240_REG_TEMP_CONF ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ADM9240_REG_VID4 ; 
 int /*<<< orphan*/  ADM9240_REG_VID_FAN_DIV ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int,int) ; 
 struct adm9240_data* FUNC8 (struct i2c_client*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (void*,void*) ; 
 struct i2c_client* FUNC13 (struct device*) ; 

__attribute__((used)) static struct adm9240_data *FUNC14(struct device *dev)
{
	struct i2c_client *client = FUNC13(dev);
	struct adm9240_data *data = FUNC8(client);
	int i;

	FUNC10(&data->update_lock);

	/* minimum measurement cycle: 1.75 seconds */
	if (FUNC12(jiffies, data->last_updated_measure + (HZ * 7 / 4))
			|| !data->valid) {

		for (i = 0; i < 6; i++) /* read voltages */
		{
			data->in[i] = FUNC9(client,
					FUNC2(i));
		}
		data->alarms = FUNC9(client,
					FUNC3(0)) |
					FUNC9(client,
					FUNC3(1)) << 8;

		/* read temperature: assume temperature changes less than
		 * 0.5'C per two measurement cycles thus ignore possible
		 * but unlikely aliasing error on lsb reading. --Grant */
		data->temp = ((FUNC9(client,
					ADM9240_REG_TEMP) << 8) |
					FUNC9(client,
					ADM9240_REG_TEMP_CONF)) / 128;

		for (i = 0; i < 2; i++) /* read fans */
		{
			data->fan[i] = FUNC9(client,
					FUNC0(i));

			/* adjust fan clock divider on overflow */
			if (data->valid && data->fan[i] == 255 &&
					data->fan_div[i] < 3) {

				FUNC7(client, i,
						++data->fan_div[i]);

				/* adjust fan_min if active, but not to 0 */
				if (data->fan_min[i] < 255 &&
						data->fan_min[i] >= 2)
					data->fan_min[i] /= 2;
			}
		}
		data->last_updated_measure = jiffies;
	}

	/* minimum config reading cycle: 300 seconds */
	if (FUNC12(jiffies, data->last_updated_config + (HZ * 300))
			|| !data->valid) {

		for (i = 0; i < 6; i++)
		{
			data->in_min[i] = FUNC9(client,
					FUNC5(i));
			data->in_max[i] = FUNC9(client,
					FUNC4(i));
		}
		for (i = 0; i < 2; i++)
		{
			data->fan_min[i] = FUNC9(client,
					FUNC1(i));
		}
		data->temp_max[0] = FUNC9(client,
				FUNC6(0));
		data->temp_max[1] = FUNC9(client,
				FUNC6(1));

		/* read fan divs and 5-bit VID */
		i = FUNC9(client, ADM9240_REG_VID_FAN_DIV);
		data->fan_div[0] = (i >> 4) & 3;
		data->fan_div[1] = (i >> 6) & 3;
		data->vid = i & 0x0f;
		data->vid |= (FUNC9(client,
					ADM9240_REG_VID4) & 1) << 4;
		/* read analog out */
		data->aout = FUNC9(client,
				ADM9240_REG_ANALOG_OUT);

		data->last_updated_config = jiffies;
		data->valid = 1;
	}
	FUNC11(&data->update_lock);
	return data;
}