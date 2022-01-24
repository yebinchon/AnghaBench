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
struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ id; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;
struct cx18_open_id {size_t type; scalar_t__ open_id; int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct TYPE_2__ {int video_mute; int video_mute_yuv; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; TYPE_1__ params; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  std; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  prio; struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_SET_VIDEO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t CX18_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  CX18_F_I_RADIO_USER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18_open_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC9 (struct cx18*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cx18_open_id*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(struct file *filp)
{
	struct cx18_open_id *id = filp->private_data;
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];

	FUNC0("close() of %s\n", s->name);

	FUNC13(&cx->prio, id->prio);

	/* Easy case first: this stream was never claimed by us */
	if (s->id != id->open_id) {
		FUNC10(id);
		return 0;
	}

	/* 'Unclaim' this stream */

	/* Stop radio */
	FUNC11(&cx->serialize_lock);
	if (id->type == CX18_ENC_STREAM_TYPE_RAD) {
		/* Closing radio device, return to TV mode */
		FUNC5(cx);
		/* Mark that the radio is no longer in use */
		FUNC2(CX18_F_I_RADIO_USER, &cx->i_flags);
		/* Switch tuner to TV */
		FUNC4(cx, core, s_std, cx->std);
		/* Select correct audio input (i.e. TV tuner or Line in) */
		FUNC3(cx);
		if (FUNC1(&cx->ana_capturing) > 0) {
			/* Undo video mute */
			FUNC9(cx, CX18_CPU_SET_VIDEO_MUTE, 2, s->handle,
				cx->params.video_mute |
					(cx->params.video_mute_yuv << 8));
		}
		/* Done! Unmute and continue. */
		FUNC8(cx);
		FUNC6(s);
	} else {
		FUNC7(id, 0);
	}
	FUNC10(id);
	FUNC12(&cx->serialize_lock);
	return 0;
}