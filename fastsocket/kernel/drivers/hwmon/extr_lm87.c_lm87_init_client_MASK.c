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
typedef  int u8 ;
struct lm87_data {int channel; int config; } ;
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int CHAN_TEMP3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LM87_REG_CHANNEL_MODE ; 
 int /*<<< orphan*/  LM87_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_HIGH ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_LOW ; 
 struct lm87_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct i2c_client *client)
{
	struct lm87_data *data = FUNC4(client);

	if (client->dev.platform_data) {
		data->channel = *(u8 *)client->dev.platform_data;
		FUNC6(client,
				 LM87_REG_CHANNEL_MODE, data->channel);
	} else {
		data->channel = FUNC5(client, LM87_REG_CHANNEL_MODE);
	}
	data->config = FUNC5(client, LM87_REG_CONFIG) & 0x6F;

	if (!(data->config & 0x01)) {
		int i;

		/* Limits are left uninitialized after power-up */
		for (i = 1; i < 6; i++) {
			FUNC6(client, FUNC3(i), 0x00);
			FUNC6(client, FUNC2(i), 0xFF);
		}
		for (i = 0; i < 2; i++) {
			FUNC6(client, LM87_REG_TEMP_HIGH[i], 0x7F);
			FUNC6(client, LM87_REG_TEMP_LOW[i], 0x00);
			FUNC6(client, FUNC1(i), 0x00);
			FUNC6(client, FUNC0(i), 0xFF);
		}
		if (data->channel & CHAN_TEMP3) {
			FUNC6(client, LM87_REG_TEMP_HIGH[2], 0x7F);
			FUNC6(client, LM87_REG_TEMP_LOW[2], 0x00);
		} else {
			FUNC6(client, FUNC3(0), 0x00);
			FUNC6(client, FUNC2(0), 0xFF);
		}
	}

	/* Make sure Start is set and INT#_Clear is clear */
	if ((data->config & 0x09) != 0x01)
		FUNC6(client, LM87_REG_CONFIG,
				 (data->config & 0x77) | 0x01);
}