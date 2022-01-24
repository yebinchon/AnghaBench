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
struct vp27smpx_state {int /*<<< orphan*/  radio; } ;
struct v4l2_tuner {int /*<<< orphan*/  audmode; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 struct vp27smpx_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct vp27smpx_state *state = FUNC0(sd);

	if (!state->radio)
		FUNC1(sd, vt->audmode);
	return 0;
}