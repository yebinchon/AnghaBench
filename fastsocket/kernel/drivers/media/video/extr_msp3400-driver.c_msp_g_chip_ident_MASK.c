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
struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct msp_state {int rev1; int rev2; int /*<<< orphan*/  ident; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct msp_state* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct i2c_client*,struct v4l2_dbg_chip_ident*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_dbg_chip_ident *chip)
{
	struct msp_state *state = FUNC0(sd);
	struct i2c_client *client = FUNC2(sd);

	return FUNC1(client, chip, state->ident,
			(state->rev1 << 16) | state->rev2);
}