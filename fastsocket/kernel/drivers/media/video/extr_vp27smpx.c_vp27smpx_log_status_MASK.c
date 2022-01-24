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
struct vp27smpx_state {scalar_t__ radio; int /*<<< orphan*/  audmode; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 struct vp27smpx_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct vp27smpx_state *state = FUNC0(sd);

	FUNC1(sd, "Audio Mode: %u%s\n", state->audmode,
			state->radio ? " (Radio)" : "");
	return 0;
}