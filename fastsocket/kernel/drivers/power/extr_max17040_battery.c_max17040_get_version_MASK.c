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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX17040_VER_LSB ; 
 int /*<<< orphan*/  MAX17040_VER_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	u8 msb;
	u8 lsb;

	msb = FUNC1(client, MAX17040_VER_MSB);
	lsb = FUNC1(client, MAX17040_VER_LSB);

	FUNC0(&client->dev, "MAX17040 Fuel-Gauge Ver %d%d\n", msb, lsb);
}