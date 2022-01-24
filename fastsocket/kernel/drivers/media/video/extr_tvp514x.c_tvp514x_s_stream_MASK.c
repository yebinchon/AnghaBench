#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct tvp514x_reg {int dummy; } ;
struct tvp514x_decoder {int streaming; } ;
struct i2c_client {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* id_table; } ;
struct TYPE_3__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  REG_OPERATION_MODE ; 
 struct tvp514x_decoder* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,struct tvp514x_decoder*) ; 
 int FUNC2 (struct v4l2_subdev*,struct tvp514x_decoder*) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct v4l2_subdev*,struct tvp514x_reg*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int enable)
{
	int err = 0;
	struct i2c_client *client = FUNC6(sd);
	struct tvp514x_decoder *decoder = FUNC0(sd);

	if (decoder->streaming == enable)
		return 0;

	switch (enable) {
	case 0:
	{
		/* Power Down Sequence */
		err = FUNC3(sd, REG_OPERATION_MODE, 0x01);
		if (err) {
			FUNC5(sd, "Unable to turn off decoder\n");
			return err;
		}
		decoder->streaming = enable;
		break;
	}
	case 1:
	{
		struct tvp514x_reg *int_seq = (struct tvp514x_reg *)
				client->driver->id_table->driver_data;

		/* Power Up Sequence */
		err = FUNC4(sd, int_seq);
		if (err) {
			FUNC5(sd, "Unable to turn on decoder\n");
			return err;
		}
		/* Detect if not already detected */
		err = FUNC2(sd, decoder);
		if (err) {
			FUNC5(sd, "Unable to detect decoder\n");
			return err;
		}
		err = FUNC1(sd, decoder);
		if (err) {
			FUNC5(sd, "Unable to configure decoder\n");
			return err;
		}
		decoder->streaming = enable;
		break;
	}
	default:
		err = -ENODEV;
		break;
	}

	return err;
}