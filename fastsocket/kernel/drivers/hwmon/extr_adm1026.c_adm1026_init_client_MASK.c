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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int auto_pwm_min; } ;
struct adm1026_data {int config1; int config2; int config3; int* gpio_config; int /*<<< orphan*/ * fan_div; TYPE_1__ pwm1; } ;

/* Variables and functions */
 scalar_t__ ADM1026_REG_CONFIG1 ; 
 scalar_t__ ADM1026_REG_CONFIG2 ; 
 scalar_t__ ADM1026_REG_CONFIG3 ; 
 scalar_t__ ADM1026_REG_FAN_DIV_0_3 ; 
 scalar_t__ ADM1026_REG_FAN_DIV_4_7 ; 
 scalar_t__ ADM1026_REG_GPIO_CFG_0_3 ; 
 int CFG1_AIN8_9 ; 
 int CFG1_INT_CLEAR ; 
 int CFG1_INT_ENABLE ; 
 int CFG1_MONITOR ; 
 int CFG1_RESET ; 
 int CFG1_THERM_HOT ; 
 int CFG3_GPIO16_ENABLE ; 
 int CFG3_VREF_250 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int* gpio_fan ; 
 int* gpio_input ; 
 int* gpio_inverted ; 
 int* gpio_normal ; 
 int* gpio_output ; 
 struct adm1026_data* FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC7(struct i2c_client *client)
{
	int value, i;
	struct adm1026_data *data = FUNC6(client);

	FUNC5(&client->dev, "Initializing device\n");
	/* Read chip config */
	data->config1 = FUNC3(client, ADM1026_REG_CONFIG1);
	data->config2 = FUNC3(client, ADM1026_REG_CONFIG2);
	data->config3 = FUNC3(client, ADM1026_REG_CONFIG3);

	/* Inform user of chip config */
	FUNC5(&client->dev, "ADM1026_REG_CONFIG1 is: 0x%02x\n",
		data->config1);
	if ((data->config1 & CFG1_MONITOR) == 0) {
		FUNC5(&client->dev, "Monitoring not currently "
			"enabled.\n");
	}
	if (data->config1 & CFG1_INT_ENABLE) {
		FUNC5(&client->dev, "SMBALERT interrupts are "
			"enabled.\n");
	}
	if (data->config1 & CFG1_AIN8_9) {
		FUNC5(&client->dev, "in8 and in9 enabled. "
			"temp3 disabled.\n");
	} else {
		FUNC5(&client->dev, "temp3 enabled.  in8 and "
			"in9 disabled.\n");
	}
	if (data->config1 & CFG1_THERM_HOT) {
		FUNC5(&client->dev, "Automatic THERM, PWM, "
			"and temp limits enabled.\n");
	}

	if (data->config3 & CFG3_GPIO16_ENABLE) {
		FUNC5(&client->dev, "GPIO16 enabled.  THERM "
			"pin disabled.\n");
	} else {
		FUNC5(&client->dev, "THERM pin enabled.  "
			"GPIO16 disabled.\n");
	}
	if (data->config3 & CFG3_VREF_250) {
		FUNC5(&client->dev, "Vref is 2.50 Volts.\n");
	} else {
		FUNC5(&client->dev, "Vref is 1.82 Volts.\n");
	}
	/* Read and pick apart the existing GPIO configuration */
	value = 0;
	for (i = 0;i <= 15;++i) {
		if ((i & 0x03) == 0) {
			value = FUNC3(client,
					ADM1026_REG_GPIO_CFG_0_3 + i/4);
		}
		data->gpio_config[i] = value & 0x03;
		value >>= 2;
	}
	data->gpio_config[16] = (data->config3 >> 6) & 0x03;

	/* ... and then print it */
	FUNC2(client);

	/* If the user asks us to reprogram the GPIO config, then
	 * do it now.
	 */
	if (gpio_input[0] != -1 || gpio_output[0] != -1
		|| gpio_inverted[0] != -1 || gpio_normal[0] != -1
		|| gpio_fan[0] != -1) {
		FUNC1(client);
	}

	/* WE INTENTIONALLY make no changes to the limits,
	 *   offsets, pwms, fans and zones.  If they were
	 *   configured, we don't want to mess with them.
	 *   If they weren't, the default is 100% PWM, no
	 *   control and will suffice until 'sensors -s'
	 *   can be run by the user.  We DO set the default
	 *   value for pwm1.auto_pwm_min to its maximum
	 *   so that enabling automatic pwm fan control
	 *   without first setting a value for pwm1.auto_pwm_min
	 *   will not result in potentially dangerous fan speed decrease.
	 */
	data->pwm1.auto_pwm_min=255;
	/* Start monitoring */
	value = FUNC3(client, ADM1026_REG_CONFIG1);
	/* Set MONITOR, clear interrupt acknowledge and s/w reset */
	value = (value | CFG1_MONITOR) & (~CFG1_INT_CLEAR & ~CFG1_RESET);
	FUNC5(&client->dev, "Setting CONFIG to: 0x%02x\n", value);
	data->config1 = value;
	FUNC4(client, ADM1026_REG_CONFIG1, value);

	/* initialize fan_div[] to hardware defaults */
	value = FUNC3(client, ADM1026_REG_FAN_DIV_0_3) |
		(FUNC3(client, ADM1026_REG_FAN_DIV_4_7) << 8);
	for (i = 0;i <= 7;++i) {
		data->fan_div[i] = FUNC0(value & 0x03);
		value >>= 2;
	}
}