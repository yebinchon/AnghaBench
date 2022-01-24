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
struct wm8775_state {int input; int /*<<< orphan*/  mute; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R21 ; 
 struct wm8775_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			    u32 input, u32 output, u32 config)
{
	struct wm8775_state *state = FUNC0(sd);

	/* There are 4 inputs and one output. Zero or more inputs
	   are multiplexed together to the output. Hence there are
	   16 combinations.
	   If only one input is active (the normal case) then the
	   input values 1, 2, 4 or 8 should be used. */
	if (input > 15) {
		FUNC2(sd, "Invalid input %d.\n", input);
		return -EINVAL;
	}
	state->input = input;
	if (!FUNC1(state->mute))
		return 0;
	FUNC3(sd, R21, 0x0c0);
	FUNC3(sd, R14, 0x1d4);
	FUNC3(sd, R15, 0x1d4);
	FUNC3(sd, R21, 0x100 + state->input);
	return 0;
}