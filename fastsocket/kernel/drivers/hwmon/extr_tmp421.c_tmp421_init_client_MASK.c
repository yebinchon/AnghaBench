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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  TMP421_CONFIG_REG_1 ; 
 int TMP421_CONFIG_SHUTDOWN ; 
 int /*<<< orphan*/  TMP421_CONVERSION_RATE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	int config, config_orig;

	/* Set the conversion rate to 2 Hz */
	FUNC3(client, TMP421_CONVERSION_RATE_REG, 0x05);

	/* Start conversions (disable shutdown if necessary) */
	config = FUNC2(client, TMP421_CONFIG_REG_1);
	if (config < 0) {
		FUNC0(&client->dev, "Could not read configuration"
			 " register (%d)\n", config);
		return -ENODEV;
	}

	config_orig = config;
	config &= ~TMP421_CONFIG_SHUTDOWN;

	if (config != config_orig) {
		FUNC1(&client->dev, "Enable monitoring chip\n");
		FUNC3(client, TMP421_CONFIG_REG_1, config);
	}

	return 0;
}