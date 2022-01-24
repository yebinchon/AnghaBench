#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_4__* adapter; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int error; } ;
struct cs53l32a_state {TYPE_1__ hdl; struct v4l2_subdev sd; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  cs53l32a_ctrl_ops ; 
 int /*<<< orphan*/  cs53l32a_ops ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cs53l32a_state*) ; 
 struct cs53l32a_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct cs53l32a_state *state;
	struct v4l2_subdev *sd;
	int i;

	/* Check if the adapter supports the needed features */
	if (!FUNC2(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	if (!id)
		FUNC5(client->name, "cs53l32a", sizeof(client->name));

	FUNC11(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC4(sizeof(struct cs53l32a_state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;
	sd = &state->sd;
	FUNC10(sd, client, &cs53l32a_ops);

	for (i = 1; i <= 7; i++) {
		u8 v = FUNC0(sd, i);

		FUNC9(1, debug, sd, "Read Reg %d %02x\n", i, v);
	}

	FUNC7(&state->hdl, 2);
	FUNC8(&state->hdl, &cs53l32a_ctrl_ops,
			V4L2_CID_AUDIO_VOLUME, -96, 12, 1, 0);
	FUNC8(&state->hdl, &cs53l32a_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	sd->ctrl_handler = &state->hdl;
	if (state->hdl.error) {
		int err = state->hdl.error;

		FUNC6(&state->hdl);
		FUNC3(state);
		return err;
	}

	/* Set cs53l32a internal register for Adaptec 2010/2410 setup */

	FUNC1(sd, 0x01, 0x21);
	FUNC1(sd, 0x02, 0x29);
	FUNC1(sd, 0x03, 0x30);
	FUNC1(sd, 0x04, 0x00);
	FUNC1(sd, 0x05, 0x00);
	FUNC1(sd, 0x06, 0x00);
	FUNC1(sd, 0x07, 0x00);

	/* Display results, should be 0x21,0x29,0x30,0x00,0x00,0x00,0x00 */

	for (i = 1; i <= 7; i++) {
		u8 v = FUNC0(sd, i);

		FUNC9(1, debug, sd, "Read Reg %d %02x\n", i, v);
	}
	return 0;
}