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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {int i2s_mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  msp_debug ; 
 struct msp_state* FUNC0 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 freq)
{
	struct msp_state *state = FUNC0(sd);
	struct i2c_client *client = FUNC1(sd);

	FUNC2(1, msp_debug, client, "Setting I2S speed to %d\n", freq);

	switch (freq) {
		case 1024000:
			state->i2s_mode = 0;
			break;
		case 2048000:
			state->i2s_mode = 1;
			break;
		default:
			return -EINVAL;
	}
	return 0;
}