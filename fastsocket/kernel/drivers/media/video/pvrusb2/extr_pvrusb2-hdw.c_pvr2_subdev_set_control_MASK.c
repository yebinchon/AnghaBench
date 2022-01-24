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
struct v4l2_control {int id; int value; } ;
struct pvr2_hdw {int /*<<< orphan*/  v4l2_dev; } ;
typedef  int /*<<< orphan*/  ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_CHIPS ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  s_ctrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 

__attribute__((used)) static void FUNC3(struct pvr2_hdw *hdw, int id,
				    const char *name, int val)
{
	struct v4l2_control ctrl;
	FUNC1(PVR2_TRACE_CHIPS, "subdev v4l2 %s=%d", name, val);
	FUNC0(&ctrl, 0, sizeof(ctrl));
	ctrl.id = id;
	ctrl.value = val;
	FUNC2(&hdw->v4l2_dev, 0, core, s_ctrl, &ctrl);
}