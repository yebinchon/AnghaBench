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
struct saa7127_state {int reg_2d; int reg_61; int video_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 struct saa7127_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int enable)
{
	struct saa7127_state *state = FUNC1(sd);

	if (enable) {
		FUNC2(1, debug, sd, "Enable Video Output\n");
		FUNC0(sd, 0x2d, state->reg_2d);
		FUNC0(sd, 0x61, state->reg_61);
	} else {
		FUNC2(1, debug, sd, "Disable Video Output\n");
		FUNC0(sd, 0x2d, (state->reg_2d & 0xf0));
		FUNC0(sd, 0x61, (state->reg_61 | 0xc0));
	}
	state->video_enable = enable;
	return 0;
}