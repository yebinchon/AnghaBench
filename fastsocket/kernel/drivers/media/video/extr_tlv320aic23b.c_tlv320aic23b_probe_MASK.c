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
struct v4l2_subdev {int dummy; } ;
struct tlv320aic23b_state {scalar_t__ muted; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct tlv320aic23b_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlv320aic23b_ops ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct tlv320aic23b_state *state;
	struct v4l2_subdev *sd;

	/* Check if the adapter supports the needed features */
	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC4(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC1(sizeof(struct tlv320aic23b_state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;
	sd = &state->sd;
	FUNC3(sd, client, &tlv320aic23b_ops);
	state->muted = 0;

	/* Initialize tlv320aic23b */

	/* RESET */
	FUNC2(sd, 15, 0x000);
	/* turn off DAC & mic input */
	FUNC2(sd, 6, 0x00A);
	/* left-justified, 24-bit, master mode */
	FUNC2(sd, 7, 0x049);
	/* set gain on both channels to +3.0 dB */
	FUNC2(sd, 0, 0x119);
	/* set sample rate to 48 kHz */
	FUNC2(sd, 8, 0x000);
	/* activate digital interface */
	FUNC2(sd, 9, 0x001);
	return 0;
}