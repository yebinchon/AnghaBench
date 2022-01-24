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
 int /*<<< orphan*/  LM85_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	int value;

	/* Start monitoring if needed */
	value = FUNC2(client, LM85_REG_CONFIG);
	if (!(value & 0x01)) {
		FUNC0(&client->dev, "Starting monitoring\n");
		FUNC3(client, LM85_REG_CONFIG, value | 0x01);
	}

	/* Warn about unusual configuration bits */
	if (value & 0x02)
		FUNC1(&client->dev, "Device configuration is locked\n");
	if (!(value & 0x04))
		FUNC1(&client->dev, "Device is not ready\n");
}