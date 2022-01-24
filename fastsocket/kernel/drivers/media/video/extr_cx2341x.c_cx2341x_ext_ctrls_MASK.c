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
struct v4l2_queryctrl {scalar_t__ type; int /*<<< orphan*/  id; } ;
struct v4l2_ext_controls {int count; int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int /*<<< orphan*/  id; } ;
struct cx2341x_mpeg_params {scalar_t__ video_bitrate_mode; scalar_t__ video_bitrate_peak; scalar_t__ video_bitrate; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ V4L2_CTRL_TYPE_MENU ; 
 scalar_t__ V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ; 
 unsigned int VIDIOC_G_EXT_CTRLS ; 
 int /*<<< orphan*/  FUNC0 (struct cx2341x_mpeg_params*) ; 
 char** FUNC1 (struct cx2341x_mpeg_params*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cx2341x_mpeg_params*,struct v4l2_queryctrl*) ; 
 int FUNC3 (struct cx2341x_mpeg_params*,struct v4l2_ext_control*) ; 
 int FUNC4 (struct cx2341x_mpeg_params*,int,struct v4l2_ext_control*) ; 
 int FUNC5 (struct v4l2_ext_control*,struct v4l2_queryctrl*,char const* const*) ; 

int FUNC6(struct cx2341x_mpeg_params *params, int busy,
		  struct v4l2_ext_controls *ctrls, unsigned int cmd)
{
	int err = 0;
	int i;

	if (cmd == VIDIOC_G_EXT_CTRLS) {
		for (i = 0; i < ctrls->count; i++) {
			struct v4l2_ext_control *ctrl = ctrls->controls + i;

			err = FUNC3(params, ctrl);
			if (err) {
				ctrls->error_idx = i;
				break;
			}
		}
		return err;
	}
	for (i = 0; i < ctrls->count; i++) {
		struct v4l2_ext_control *ctrl = ctrls->controls + i;
		struct v4l2_queryctrl qctrl;
		const char * const *menu_items = NULL;

		qctrl.id = ctrl->id;
		err = FUNC2(params, &qctrl);
		if (err)
			break;
		if (qctrl.type == V4L2_CTRL_TYPE_MENU)
			menu_items = FUNC1(params, qctrl.id);
		err = FUNC5(ctrl, &qctrl, menu_items);
		if (err)
			break;
		err = FUNC4(params, busy, ctrl);
		if (err)
			break;
	}
	if (err == 0 &&
	    params->video_bitrate_mode == V4L2_MPEG_VIDEO_BITRATE_MODE_VBR &&
	    params->video_bitrate_peak < params->video_bitrate) {
		err = -ERANGE;
		ctrls->error_idx = ctrls->count;
	}
	if (err)
		ctrls->error_idx = i;
	else
		FUNC0(params);
	return err;
}