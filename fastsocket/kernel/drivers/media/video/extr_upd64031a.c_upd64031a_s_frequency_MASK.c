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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;
struct upd64031a_state {int* regs; } ;

/* Variables and functions */
 size_t R00 ; 
 int /*<<< orphan*/  debug ; 
 struct upd64031a_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_frequency *freq)
{
	struct upd64031a_state *state = FUNC0(sd);
	u8 reg = state->regs[R00];

	FUNC2(1, debug, sd, "changed input or channel\n");
	FUNC1(sd, R00, reg | 0x10);
	FUNC1(sd, R00, reg & ~0x10);
	return 0;
}