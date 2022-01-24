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
struct adv7343_state {int /*<<< orphan*/  std; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/ * adv7343_init_reg_val ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adv7343_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd)
{
	struct adv7343_state *state = FUNC4(sd);
	int err = 0;
	int i;

	for (i = 0; i < FUNC0(adv7343_init_reg_val); i += 2) {

		err = FUNC3(sd, adv7343_init_reg_val[i],
					adv7343_init_reg_val[i+1]);
		if (err) {
			FUNC5(sd, "Error initializing\n");
			return err;
		}
	}

	/* Configure for default video standard */
	err = FUNC1(sd, state->output);
	if (err < 0) {
		FUNC5(sd, "Error setting output during init\n");
		return -EINVAL;
	}

	err = FUNC2(sd, state->std);
	if (err < 0) {
		FUNC5(sd, "Error setting std during init\n");
		return -EINVAL;
	}

	return err;
}