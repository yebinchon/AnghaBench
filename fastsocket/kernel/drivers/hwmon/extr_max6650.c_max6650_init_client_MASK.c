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
struct max6650_data {int config; void* count; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int MAX6650_CFG_MODE_MASK ; 
 int MAX6650_CFG_MODE_OFF ; 
 int MAX6650_CFG_MODE_OPEN_LOOP ; 
 int MAX6650_CFG_PRESCALER_16 ; 
 int MAX6650_CFG_PRESCALER_2 ; 
 int MAX6650_CFG_PRESCALER_4 ; 
 int MAX6650_CFG_PRESCALER_8 ; 
 int MAX6650_CFG_PRESCALER_MASK ; 
 int MAX6650_CFG_V12 ; 
 int /*<<< orphan*/  MAX6650_REG_CONFIG ; 
 int /*<<< orphan*/  MAX6650_REG_COUNT ; 
 int /*<<< orphan*/  MAX6650_REG_DAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int fan_voltage ; 
 struct max6650_data* FUNC3 (struct i2c_client*) ; 
 void* FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int prescaler ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct max6650_data *data = FUNC3(client);
	int config;
	int err = -EIO;

	config = FUNC4(client, MAX6650_REG_CONFIG);

	if (config < 0) {
		FUNC1(&client->dev, "Error reading config, aborting.\n");
		return err;
	}

	switch (fan_voltage) {
		case 0:
			break;
		case 5:
			config &= ~MAX6650_CFG_V12;
			break;
		case 12:
			config |= MAX6650_CFG_V12;
			break;
		default:
			FUNC1(&client->dev,
				"illegal value for fan_voltage (%d)\n",
				fan_voltage);
	}

	FUNC2(&client->dev, "Fan voltage is set to %dV.\n",
		 (config & MAX6650_CFG_V12) ? 12 : 5);

	switch (prescaler) {
		case 0:
			break;
		case 1:
			config &= ~MAX6650_CFG_PRESCALER_MASK;
			break;
		case 2:
			config = (config & ~MAX6650_CFG_PRESCALER_MASK)
				 | MAX6650_CFG_PRESCALER_2;
			break;
		case  4:
			config = (config & ~MAX6650_CFG_PRESCALER_MASK)
				 | MAX6650_CFG_PRESCALER_4;
			break;
		case  8:
			config = (config & ~MAX6650_CFG_PRESCALER_MASK)
				 | MAX6650_CFG_PRESCALER_8;
			break;
		case 16:
			config = (config & ~MAX6650_CFG_PRESCALER_MASK)
				 | MAX6650_CFG_PRESCALER_16;
			break;
		default:
			FUNC1(&client->dev,
				"illegal value for prescaler (%d)\n",
				prescaler);
	}

	FUNC2(&client->dev, "Prescaler is set to %d.\n",
		 1 << (config & MAX6650_CFG_PRESCALER_MASK));

	/* If mode is set to "full off", we change it to "open loop" and
	 * set DAC to 255, which has the same effect. We do this because
	 * there's no "full off" mode defined in hwmon specifcations.
	 */

	if ((config & MAX6650_CFG_MODE_MASK) == MAX6650_CFG_MODE_OFF) {
		FUNC0(&client->dev, "Change mode to open loop, full off.\n");
		config = (config & ~MAX6650_CFG_MODE_MASK)
			 | MAX6650_CFG_MODE_OPEN_LOOP;
		if (FUNC5(client, MAX6650_REG_DAC, 255)) {
			FUNC1(&client->dev, "DAC write error, aborting.\n");
			return err;
		}
	}

	if (FUNC5(client, MAX6650_REG_CONFIG, config)) {
		FUNC1(&client->dev, "Config write error, aborting.\n");
		return err;
	}

	data->config = config;
	data->count = FUNC4(client, MAX6650_REG_COUNT);

	return 0;
}