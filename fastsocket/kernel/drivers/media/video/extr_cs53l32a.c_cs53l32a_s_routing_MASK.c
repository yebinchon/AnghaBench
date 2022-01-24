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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
			      u32 input, u32 output, u32 config)
{
	/* There are 2 physical inputs, but the second input can be
	   placed in two modes, the first mode bypasses the PGA (gain),
	   the second goes through the PGA. Hence there are three
	   possible inputs to choose from. */
	if (input > 2) {
		FUNC1(sd, "Invalid input %d.\n", input);
		return -EINVAL;
	}
	FUNC0(sd, 0x01, 0x01 + (input << 4));
	return 0;
}