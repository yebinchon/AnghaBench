#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_mbus_framefmt {int width; int /*<<< orphan*/  code; int /*<<< orphan*/  height; } ;
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; TYPE_1__* controls; } ;
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;
struct cx2341x_mpeg_params {scalar_t__ video_encoding; int width; scalar_t__ stream_vbi_fmt; scalar_t__ stream_type; int audio_properties; int /*<<< orphan*/  height; } ;
struct cx18_open_id {size_t type; int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct cx18_api_func_private {int /*<<< orphan*/ * s; struct cx18* cx; } ;
struct cx18 {int dualwatch_stereo_mode; struct cx2341x_mpeg_params params; int /*<<< orphan*/ * streams; int /*<<< orphan*/  sd_av; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_CLASS_MPEG ; 
 scalar_t__ V4L2_CTRL_CLASS_USER ; 
 int /*<<< orphan*/  V4L2_MBUS_FMT_FIXED ; 
 scalar_t__ V4L2_MPEG_VIDEO_ENCODING_MPEG_1 ; 
 int /*<<< orphan*/  VIDIOC_S_EXT_CTRLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/  cx18_api_func ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cx18*,struct v4l2_control*) ; 
 int FUNC4 (struct cx18*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct cx2341x_mpeg_params*,int /*<<< orphan*/ ,struct v4l2_ext_controls*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct cx18_api_func_private*,int /*<<< orphan*/ ,struct cx2341x_mpeg_params*,struct cx2341x_mpeg_params*) ; 
 int /*<<< orphan*/  s_clock_freq ; 
 int /*<<< orphan*/  s_mbus_fmt ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 

int FUNC9(struct file *file, void *fh, struct v4l2_ext_controls *c)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	int ret;
	struct v4l2_control ctrl;

	ret = FUNC7(&cx->prio, id->prio);
	if (ret)
		return ret;

	if (c->ctrl_class == V4L2_CTRL_CLASS_USER) {
		int i;
		int err = 0;

		for (i = 0; i < c->count; i++) {
			ctrl.id = c->controls[i].id;
			ctrl.value = c->controls[i].value;
			err = FUNC3(cx, &ctrl);
			c->controls[i].value = ctrl.value;
			if (err) {
				c->error_idx = i;
				break;
			}
		}
		return err;
	}
	if (c->ctrl_class == V4L2_CTRL_CLASS_MPEG) {
		static u32 freqs[3] = { 44100, 48000, 32000 };
		struct cx18_api_func_private priv;
		struct cx2341x_mpeg_params p = cx->params;
		int err = FUNC5(&p, FUNC1(&cx->ana_capturing),
						c, VIDIOC_S_EXT_CTRLS);
		unsigned int idx;

		if (err)
			return err;

		if (p.video_encoding != cx->params.video_encoding) {
			int is_mpeg1 = p.video_encoding ==
						V4L2_MPEG_VIDEO_ENCODING_MPEG_1;
			struct v4l2_mbus_framefmt fmt;

			/* fix videodecoder resolution */
			fmt.width = cx->params.width / (is_mpeg1 ? 2 : 1);
			fmt.height = cx->params.height;
			fmt.code = V4L2_MBUS_FMT_FIXED;
			FUNC8(cx->sd_av, video, s_mbus_fmt, &fmt);
		}
		priv.cx = cx;
		priv.s = &cx->streams[id->type];
		err = FUNC6(&priv, cx18_api_func, &cx->params, &p);
		if (!err &&
		    (cx->params.stream_vbi_fmt != p.stream_vbi_fmt ||
		     cx->params.stream_type != p.stream_type))
			err = FUNC4(cx, p.stream_vbi_fmt,
						 p.stream_type);
		cx->params = p;
		cx->dualwatch_stereo_mode = p.audio_properties & 0x0300;
		idx = p.audio_properties & 0x03;
		/* The audio clock of the digitizer must match the codec sample
		   rate otherwise you get some very strange effects. */
		if (idx < FUNC0(freqs))
			FUNC2(cx, audio, s_clock_freq, freqs[idx]);
		return err;
	}
	return -EINVAL;
}