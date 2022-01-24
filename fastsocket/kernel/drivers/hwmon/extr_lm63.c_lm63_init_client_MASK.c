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
struct lm63_data {int config; int config_fan; int pwm1_freq; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM63_REG_CONFIG1 ; 
 int /*<<< orphan*/  LM63_REG_CONFIG_FAN ; 
 int /*<<< orphan*/  LM63_REG_PWM_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct lm63_data* FUNC1 (struct i2c_client*) ; 
 void* FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct lm63_data *data = FUNC1(client);

	data->config = FUNC2(client, LM63_REG_CONFIG1);
	data->config_fan = FUNC2(client,
						    LM63_REG_CONFIG_FAN);

	/* Start converting if needed */
	if (data->config & 0x40) { /* standby */
		FUNC0(&client->dev, "Switching to operational mode\n");
		data->config &= 0xA7;
		FUNC3(client, LM63_REG_CONFIG1,
					  data->config);
	}

	/* We may need pwm1_freq before ever updating the client data */
	data->pwm1_freq = FUNC2(client, LM63_REG_PWM_FREQ);
	if (data->pwm1_freq == 0)
		data->pwm1_freq = 1;

	/* Show some debug info about the LM63 configuration */
	FUNC0(&client->dev, "Alert/tach pin configured for %s\n",
		(data->config & 0x04) ? "tachometer input" :
		"alert output");
	FUNC0(&client->dev, "PWM clock %s kHz, output frequency %u Hz\n",
		(data->config_fan & 0x08) ? "1.4" : "360",
		((data->config_fan & 0x08) ? 700 : 180000) / data->pwm1_freq);
	FUNC0(&client->dev, "PWM output active %s, %s mode\n",
		(data->config_fan & 0x10) ? "low" : "high",
		(data->config_fan & 0x20) ? "manual" : "auto");
}