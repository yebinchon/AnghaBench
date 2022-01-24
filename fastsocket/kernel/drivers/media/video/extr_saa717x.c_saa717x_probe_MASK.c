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
typedef  int u8 ;
struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct saa717x_state {int input; int enable; int audio; int audio_input; int audio_main_vol_l; int audio_main_vol_r; int /*<<< orphan*/  tuner_audio_mode; scalar_t__ playback; int /*<<< orphan*/  std; struct v4l2_ctrl_handler hdl; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TUNER_AUDIO_STEREO ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BALANCE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_BASS ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_TREBLE ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_VOLUME ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saa717x_state*) ; 
 struct saa717x_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_init_initialize ; 
 int /*<<< orphan*/  saa717x_ctrl_ops ; 
 int /*<<< orphan*/  saa717x_ops ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 scalar_t__ FUNC4 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_subdev*,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *did)
{
	struct saa717x_state *decoder;
	struct v4l2_ctrl_handler *hdl;
	struct v4l2_subdev *sd;
	u8 id = 0;
	char *p = "";

	/* Check if the adapter supports the needed features */
	if (!FUNC0(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	decoder = FUNC2(sizeof(struct saa717x_state), GFP_KERNEL);
	if (decoder == NULL)
		return -ENOMEM;

	sd = &decoder->sd;
	FUNC13(sd, client, &saa717x_ops);

	if (FUNC4(sd, 0x5a4, 0xfe) &&
			FUNC4(sd, 0x5a5, 0x0f) &&
			FUNC4(sd, 0x5a6, 0x00) &&
			FUNC4(sd, 0x5a7, 0x01))
		id = FUNC3(sd, 0x5a0);
	if (id != 0xc2 && id != 0x32 && id != 0xf2 && id != 0x6c) {
		FUNC12(1, debug, sd, "saa717x not found (id=%02x)\n", id);
		FUNC1(decoder);
		return -ENODEV;
	}
	if (id == 0xc2)
		p = "saa7173";
	else if (id == 0x32)
		p = "saa7174A";
	else if (id == 0x6c)
		p = "saa7174HL";
	else
		p = "saa7171";
	FUNC14(sd, "%s found @ 0x%x (%s)\n", p,
			client->addr << 1, client->adapter->name);

	hdl = &decoder->hdl;
	FUNC9(hdl, 9);
	/* add in ascending ID order */
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 255, 1, 68);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_SATURATION, 0, 255, 1, 64);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_HUE, -128, 127, 1, 0);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_AUDIO_VOLUME, 0, 65535, 65535 / 100, 42000);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_AUDIO_BALANCE, 0, 65535, 65535 / 100, 32768);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_AUDIO_BASS, -16, 15, 1, 0);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_AUDIO_TREBLE, -16, 15, 1, 0);
	FUNC11(hdl, &saa717x_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 0);
	sd->ctrl_handler = hdl;
	if (hdl->error) {
		int err = hdl->error;

		FUNC8(hdl);
		FUNC1(decoder);
		return err;
	}

	decoder->std = V4L2_STD_NTSC;
	decoder->input = -1;
	decoder->enable = 1;

	/* FIXME!! */
	decoder->playback = 0;	/* initially capture mode used */
	decoder->audio = 1; /* DECODER_AUDIO_48_KHZ */

	decoder->audio_input = 2; /* FIXME!! */

	decoder->tuner_audio_mode = TUNER_AUDIO_STEREO;
	/* set volume, bass and treble */
	decoder->audio_main_vol_l = 6;
	decoder->audio_main_vol_r = 6;

	FUNC12(1, debug, sd, "writing init values\n");

	/* FIXME!! */
	FUNC5(sd, reg_init_initialize);

	FUNC10(hdl);

	FUNC7(TASK_INTERRUPTIBLE);
	FUNC6(2*HZ);
	return 0;
}