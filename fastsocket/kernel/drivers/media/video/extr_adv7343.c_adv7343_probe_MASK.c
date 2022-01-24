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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct adv7343_state {int reg00; int reg01; int reg02; int reg35; int /*<<< orphan*/  sd; int /*<<< orphan*/  std; int /*<<< orphan*/  output; int /*<<< orphan*/  reg82; int /*<<< orphan*/  reg80; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7343_COMPOSITE_ID ; 
 int /*<<< orphan*/  ADV7343_SD_MODE_REG1_DEFAULT ; 
 int /*<<< orphan*/  ADV7343_SD_MODE_REG2_DEFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adv7343_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct adv7343_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct adv7343_state *state;

	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	FUNC4(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC2(sizeof(struct adv7343_state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;

	state->reg00	= 0x80;
	state->reg01	= 0x00;
	state->reg02	= 0x20;
	state->reg35	= 0x00;
	state->reg80	= ADV7343_SD_MODE_REG1_DEFAULT;
	state->reg82	= ADV7343_SD_MODE_REG2_DEFAULT;

	state->output = ADV7343_COMPOSITE_ID;
	state->std = V4L2_STD_NTSC;

	FUNC3(&state->sd, client, &adv7343_ops);
	return FUNC0(&state->sd);
}