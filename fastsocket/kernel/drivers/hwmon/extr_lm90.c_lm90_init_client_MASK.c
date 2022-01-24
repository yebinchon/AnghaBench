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
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  flags; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM90_FLAG_ADT7461_EXT ; 
 int /*<<< orphan*/  LM90_REG_R_CONFIG1 ; 
 int /*<<< orphan*/  LM90_REG_W_CONFIG1 ; 
 int /*<<< orphan*/  LM90_REG_W_CONVRATE ; 
 scalar_t__ adt7461 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm90_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ max6680 ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	u8 config, config_orig;
	struct lm90_data *data = FUNC1(client);

	/*
	 * Start the conversions.
	 */
	FUNC2(client, LM90_REG_W_CONVRATE,
				  5); /* 2 Hz */
	if (FUNC3(client, LM90_REG_R_CONFIG1, &config) < 0) {
		FUNC0(&client->dev, "Initialization failed!\n");
		return;
	}
	config_orig = config;

	/* Check Temperature Range Select */
	if (data->kind == adt7461) {
		if (config & 0x04)
			data->flags |= LM90_FLAG_ADT7461_EXT;
	}

	/*
	 * Put MAX6680/MAX8881 into extended resolution (bit 0x10,
	 * 0.125 degree resolution) and range (0x08, extend range
	 * to -64 degree) mode for the remote temperature sensor.
	 */
	if (data->kind == max6680) {
		config |= 0x18;
	}

	config &= 0xBF;	/* run */
	if (config != config_orig) /* Only write if changed */
		FUNC2(client, LM90_REG_W_CONFIG1, config);
}