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
 int /*<<< orphan*/  TMP401_CONFIG_READ ; 
 int TMP401_CONFIG_SHUTDOWN ; 
 int /*<<< orphan*/  TMP401_CONFIG_WRITE ; 
 int /*<<< orphan*/  TMP401_CONVERSION_RATE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	int config, config_orig;

	/* Set the conversion rate to 2 Hz */
	FUNC2(client, TMP401_CONVERSION_RATE_WRITE, 5);

	/* Start conversions (disable shutdown if necessary) */
	config = FUNC1(client, TMP401_CONFIG_READ);
	if (config < 0) {
		FUNC0(&client->dev, "Initialization failed!\n");
		return;
	}

	config_orig = config;
	config &= ~TMP401_CONFIG_SHUTDOWN;

	if (config != config_orig)
		FUNC2(client, TMP401_CONFIG_WRITE, config);
}