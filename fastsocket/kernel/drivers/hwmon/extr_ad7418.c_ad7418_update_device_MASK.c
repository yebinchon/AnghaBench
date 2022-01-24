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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int valid; int adc_max; int /*<<< orphan*/  lock; scalar_t__ last_updated; void** in; void** temp; } ;

/* Variables and functions */
 int AD7418_CH_TEMP ; 
 int /*<<< orphan*/  AD7418_REG_ADC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AD7418_REG_CONF ; 
 int /*<<< orphan*/ * AD7418_REG_TEMP ; 
 int HZ ; 
 void* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct ad7418_data* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static struct ad7418_data *FUNC11(struct device *dev)
{
	struct i2c_client *client = FUNC9(dev);
	struct ad7418_data *data = FUNC3(client);

	FUNC6(&data->lock);

	if (FUNC8(jiffies, data->last_updated + HZ + HZ / 2)
		|| !data->valid) {
		u8 cfg;
		int i, ch;

		/* read config register and clear channel bits */
		cfg = FUNC4(client, AD7418_REG_CONF);
		cfg &= 0x1F;

		FUNC5(client, AD7418_REG_CONF,
						cfg | AD7418_CH_TEMP);
		FUNC10(30);

		for (i = 0; i < 3; i++) {
			data->temp[i] = FUNC1(client, AD7418_REG_TEMP[i]);
		}

		for (i = 0, ch = 4; i < data->adc_max; i++, ch--) {
			FUNC5(client,
					AD7418_REG_CONF,
					cfg | FUNC0(ch));

			FUNC10(15);
			data->in[data->adc_max - 1 - i] =
				FUNC1(client, AD7418_REG_ADC);
		}

		/* restore old configuration value */
		FUNC2(client, AD7418_REG_CONF, cfg);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->lock);

	return data;
}