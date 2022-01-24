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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM9240_REG_VID_FAN_DIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client, int nr,
		u8 fan_div)
{
	u8 reg, old, shift = (nr + 2) * 2;

	reg = FUNC1(client, ADM9240_REG_VID_FAN_DIV);
	old = (reg >> shift) & 3;
	reg &= ~(3 << shift);
	reg |= (fan_div << shift);
	FUNC2(client, ADM9240_REG_VID_FAN_DIV, reg);
	FUNC0(&client->dev, "fan%d clock divider changed from %u "
			"to %u\n", nr + 1, 1 << old, 1 << fan_div);
}