#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_input {char* name; } ;
struct v4l2_audio {char* name; } ;
struct tveeprom {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  depth; } ;
struct cx18_stream {int buffers; int bufs_per_mdl; int buf_size; TYPE_2__ q_full; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * video_dev; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct cx18 {char* instance; int hw_flags; char* i_flags; scalar_t__ vbi_data_inserted; scalar_t__ mpg_data_received; struct cx18_stream* streams; TYPE_1__ v4l2_dev; int /*<<< orphan*/  params; int /*<<< orphan*/  gpio_lock; int /*<<< orphan*/  gpio_val; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  active_input; int /*<<< orphan*/  card_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_F_I_RADIO_USER ; 
 int CX18_HW_TVEEPROM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int CX18_MAX_STREAMS ; 
 int /*<<< orphan*/  CX18_VERSION ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int /*<<< orphan*/ ,struct v4l2_audio*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,struct v4l2_input*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*,struct tveeprom*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static int FUNC10(struct file *file, void *fh)
{
	struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;
	struct v4l2_input vidin;
	struct v4l2_audio audin;
	int i;

	FUNC0("=================  START STATUS CARD #%d  "
		  "=================\n", cx->instance);
	FUNC0("Version: %s  Card: %s\n", CX18_VERSION, cx->card_name);
	if (cx->hw_flags & CX18_HW_TVEEPROM) {
		struct tveeprom tv;

		FUNC5(cx, &tv);
	}
	FUNC2(cx, core, log_status);
	FUNC4(cx, cx->active_input, &vidin);
	FUNC3(cx, cx->audio_input, &audin);
	FUNC0("Video Input: %s\n", vidin.name);
	FUNC0("Audio Input: %s\n", audin.name);
	FUNC7(&cx->gpio_lock);
	FUNC0("GPIO:  direction 0x%08x, value 0x%08x\n",
		cx->gpio_dir, cx->gpio_val);
	FUNC8(&cx->gpio_lock);
	FUNC0("Tuner: %s\n",
		FUNC9(CX18_F_I_RADIO_USER, &cx->i_flags) ?  "Radio" : "TV");
	FUNC6(&cx->params, cx->v4l2_dev.name);
	FUNC0("Status flags: 0x%08lx\n", cx->i_flags);
	for (i = 0; i < CX18_MAX_STREAMS; i++) {
		struct cx18_stream *s = &cx->streams[i];

		if (s->video_dev == NULL || s->buffers == 0)
			continue;
		FUNC0("Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n",
			  s->name, s->s_flags,
			  FUNC1(&s->q_full.depth) * s->bufs_per_mdl * 100
			   / s->buffers,
			  (s->buffers * s->buf_size) / 1024, s->buffers);
	}
	FUNC0("Read MPEG/VBI: %lld/%lld bytes\n",
			(long long)cx->mpg_data_received,
			(long long)cx->vbi_data_inserted);
	FUNC0("==================  END STATUS CARD #%d  "
		  "==================\n", cx->instance);
	return 0;
}