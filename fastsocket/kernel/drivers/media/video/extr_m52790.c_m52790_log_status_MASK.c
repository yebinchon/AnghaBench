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
struct m52790_state {int input; int output; } ;

/* Variables and functions */
 struct m52790_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct m52790_state *state = FUNC0(sd);

	FUNC1(sd, "Switch 1: %02x\n",
			(state->input | state->output) & 0xff);
	FUNC1(sd, "Switch 2: %02x\n",
			(state->input | state->output) >> 8);
	return 0;
}