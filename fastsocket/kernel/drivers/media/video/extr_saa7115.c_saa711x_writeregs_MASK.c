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
struct saa711x_state {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,unsigned char,unsigned char) ; 
 struct saa711x_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, const unsigned char *regs)
{
	struct saa711x_state *state = FUNC2(sd);
	unsigned char reg, data;

	while (*regs != 0x00) {
		reg = *(regs++);
		data = *(regs++);

		/* According with datasheets, reserved regs should be
		   filled with 0 - seems better not to touch on they */
		if (FUNC0(state->ident, reg)) {
			if (FUNC1(sd, reg, data) < 0)
				return -1;
		} else {
			FUNC3(1, debug, sd, "tried to access reserved reg 0x%02x\n", reg);
		}
	}
	return 0;
}