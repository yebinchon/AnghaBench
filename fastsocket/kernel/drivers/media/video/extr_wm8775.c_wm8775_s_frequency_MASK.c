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
struct wm8775_state {int input; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R21 ; 
 struct wm8775_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_frequency *freq)
{
	struct wm8775_state *state = FUNC0(sd);

	/* If I remove this, then it can happen that I have no
	   sound the first time I tune from static to a valid channel.
	   It's difficult to reproduce and is almost certainly related
	   to the zero cross detect circuit. */
	FUNC1(sd, R21, 0x0c0);
	FUNC1(sd, R14, 0x1d4);
	FUNC1(sd, R15, 0x1d4);
	FUNC1(sd, R21, 0x100 + state->input);
	return 0;
}