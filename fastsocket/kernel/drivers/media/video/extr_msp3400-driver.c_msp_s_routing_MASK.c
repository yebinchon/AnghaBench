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
typedef  int u32 ;
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {int route_in; int route_out; scalar_t__ opmode; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSP_MODE_AM_DETECT ; 
 int /*<<< orphan*/  MSP_MODE_EXTERN ; 
 scalar_t__ OPMODE_AUTOSELECT ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 
 struct msp_state* FUNC5 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd,
			 u32 input, u32 output, u32 config)
{
	struct msp_state *state = FUNC5(sd);
	struct i2c_client *client = FUNC6(sd);
	int tuner = (input >> 3) & 1;
	int sc_in = input & 0x7;
	int sc1_out = output & 0xf;
	int sc2_out = (output >> 4) & 0xf;
	u16 val, reg;
	int i;
	int extern_input = 1;

	if (state->route_in == input && state->route_out == output)
		return 0;
	state->route_in = input;
	state->route_out = output;
	/* check if the tuner input is used */
	for (i = 0; i < 5; i++) {
		if (((input >> (4 + i * 4)) & 0xf) == 0)
			extern_input = 0;
	}
	state->mode = extern_input ? MSP_MODE_EXTERN : MSP_MODE_AM_DETECT;
	state->rxsubchans = V4L2_TUNER_SUB_STEREO;
	FUNC2(client, sc_in, 0);
	FUNC2(client, sc1_out, 1);
	FUNC2(client, sc2_out, 2);
	FUNC1(client);
	reg = (state->opmode == OPMODE_AUTOSELECT) ? 0x30 : 0xbb;
	val = FUNC0(client, reg);
	FUNC4(client, reg, (val & ~0x100) | (tuner << 8));
	/* wake thread when a new input is chosen */
	FUNC3(client);
	return 0;
}