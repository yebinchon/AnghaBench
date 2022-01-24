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
struct v4l2_queryctrl {int id; int /*<<< orphan*/ * name; int /*<<< orphan*/  flags; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  params; int /*<<< orphan*/  sd_av; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 138 
#define  V4L2_CID_AUDIO_BASS 137 
#define  V4L2_CID_AUDIO_LOUDNESS 136 
#define  V4L2_CID_AUDIO_MUTE 135 
#define  V4L2_CID_AUDIO_TREBLE 134 
#define  V4L2_CID_AUDIO_VOLUME 133 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_USER_CLASS 128 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_DISABLED ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  ctrl_classes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_queryctrl*) ; 
 int /*<<< orphan*/  queryctrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct v4l2_queryctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 

int FUNC5(struct file *file, void *fh, struct v4l2_queryctrl *qctrl)
{
	struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;
	const char *name;

	qctrl->id = FUNC2(ctrl_classes, qctrl->id);
	if (qctrl->id == 0)
		return -EINVAL;

	switch (qctrl->id) {
	/* Standard V4L2 controls */
	case V4L2_CID_USER_CLASS:
		return FUNC3(qctrl, 0, 0, 0, 0);
	case V4L2_CID_BRIGHTNESS:
	case V4L2_CID_HUE:
	case V4L2_CID_SATURATION:
	case V4L2_CID_CONTRAST:
		if (FUNC4(cx->sd_av, core, queryctrl, qctrl))
			qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
		return 0;

	case V4L2_CID_AUDIO_VOLUME:
	case V4L2_CID_AUDIO_MUTE:
	case V4L2_CID_AUDIO_BALANCE:
	case V4L2_CID_AUDIO_BASS:
	case V4L2_CID_AUDIO_TREBLE:
	case V4L2_CID_AUDIO_LOUDNESS:
		if (FUNC4(cx->sd_av, core, queryctrl, qctrl))
			qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
		return 0;

	default:
		if (FUNC0(&cx->params, qctrl))
			qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
		return 0;
	}
	FUNC1(qctrl->name, name, sizeof(qctrl->name) - 1);
	qctrl->name[sizeof(qctrl->name) - 1] = 0;
	return 0;
}