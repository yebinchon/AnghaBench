#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int error; } ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct wm8739_state {int clock_freq; TYPE_1__ hdl; void* volume; void* balance; void* mute; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_5__* adapter; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R6 ; 
 int /*<<< orphan*/  R7 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8739_state*) ; 
 struct wm8739_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8739_ctrl_ops ; 
 int /*<<< orphan*/  wm8739_ops ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct wm8739_state *state;
	struct v4l2_subdev *sd;

	/* Check if the adapter supports the needed features */
	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC9(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	state = FUNC2(sizeof(struct wm8739_state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;
	sd = &state->sd;
	FUNC8(sd, client, &wm8739_ops);
	FUNC5(&state->hdl, 2);
	state->volume = FUNC7(&state->hdl, &wm8739_ctrl_ops,
			V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 50736);
	state->mute = FUNC7(&state->hdl, &wm8739_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	state->balance = FUNC7(&state->hdl, &wm8739_ctrl_ops,
			V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
	sd->ctrl_handler = &state->hdl;
	if (state->hdl.error) {
		int err = state->hdl.error;

		FUNC4(&state->hdl);
		FUNC1(state);
		return err;
	}
	FUNC3(3, &state->volume);

	state->clock_freq = 48000;

	/* Initialize wm8739 */

	/* reset */
	FUNC10(sd, R15, 0x00);
	/* filter setting, high path, offet clear */
	FUNC10(sd, R5, 0x000);
	/* ADC, OSC, Power Off mode Disable */
	FUNC10(sd, R6, 0x000);
	/* Digital Audio interface format:
	   Enable Master mode, 24 bit, MSB first/left justified */
	FUNC10(sd, R7, 0x049);
	/* sampling control: normal, 256fs, 48KHz sampling rate */
	FUNC10(sd, R8, 0x000);
	/* activate */
	FUNC10(sd, R9, 0x001);
	/* set volume/mute */
	FUNC6(&state->hdl);
	return 0;
}