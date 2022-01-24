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
struct wm8775_state {int /*<<< orphan*/  hdl; int /*<<< orphan*/  input; } ;
struct v4l2_subdev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct wm8775_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct wm8775_state *state = FUNC0(sd);

	FUNC2(sd, "Input: %d\n", state->input);
	FUNC1(&state->hdl, sd->name);
	return 0;
}