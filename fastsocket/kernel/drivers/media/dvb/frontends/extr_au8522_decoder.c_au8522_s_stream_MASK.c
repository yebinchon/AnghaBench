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
struct au8522_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H ; 
 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS ; 
 int /*<<< orphan*/  FUNC0 (struct au8522_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct au8522_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int enable)
{
	struct au8522_state *state = FUNC2(sd);

	if (enable) {
		FUNC0(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
				0x01);
		FUNC1(1);
		FUNC0(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
				AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS);
	} else {
		/* This does not completely power down the device
		   (it only reduces it from around 140ma to 80ma) */
		FUNC0(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
				1 << 5);
	}
	return 0;
}