#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_output {char* name; } ;
struct v4l2_input {char* name; } ;
struct v4l2_audioout {int /*<<< orphan*/  name; } ;
struct v4l2_audio {int /*<<< orphan*/  name; } ;
struct tveeprom {int dummy; } ;
struct TYPE_6__ {int buffers; } ;
struct ivtv_stream {int buffers; int buf_size; TYPE_3__ q_free; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * vdev; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdl; } ;
struct ivtv {int v4l2_cap; char* instance; int hw_flags; int dualwatch_stereo_mode; int output_mode; size_t audio_stereo_mode; size_t audio_bilingual_mode; char* i_flags; scalar_t__ vbi_data_inserted; scalar_t__ mpg_data_received; struct ivtv_stream* streams; TYPE_2__ v4l2_dev; TYPE_1__ cxhdl; int /*<<< orphan*/  active_output; int /*<<< orphan*/  audio_input; int /*<<< orphan*/  active_input; int /*<<< orphan*/  card_name; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  CX2341X_OSD_GET_STATE ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int IVTV_HW_TVEEPROM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IVTV_MAX_STREAMS ; 
 int /*<<< orphan*/  IVTV_VERSION ; 
 int OUT_NONE ; 
 int OUT_PASSTHROUGH ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_audio*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_audioout*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_input*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_output*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,struct tveeprom*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_status ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *file, void *fh)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
	u32 data[CX2341X_MBOX_MAX_DATA];

	int has_output = itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT;
	struct v4l2_input vidin;
	struct v4l2_audio audin;
	int i;

	FUNC0("=================  START STATUS CARD #%d  =================\n",
		       itv->instance);
	FUNC0("Version: %s Card: %s\n", IVTV_VERSION, itv->card_name);
	if (itv->hw_flags & IVTV_HW_TVEEPROM) {
		struct tveeprom tv;

		FUNC6(itv, &tv);
	}
	FUNC1(itv, core, log_status);
	FUNC4(itv, itv->active_input, &vidin);
	FUNC2(itv, itv->audio_input, &audin);
	FUNC0("Video Input:  %s\n", vidin.name);
	FUNC0("Audio Input:  %s%s\n", audin.name,
		(itv->dualwatch_stereo_mode & ~0x300) == 0x200 ? " (Bilingual)" : "");
	if (has_output) {
		struct v4l2_output vidout;
		struct v4l2_audioout audout;
		int mode = itv->output_mode;
		static const char * const output_modes[5] = {
			"None",
			"MPEG Streaming",
			"YUV Streaming",
			"YUV Frames",
			"Passthrough",
		};
		static const char * const audio_modes[5] = {
			"Stereo",
			"Left",
			"Right",
			"Mono",
			"Swapped"
		};
		static const char * const alpha_mode[4] = {
			"None",
			"Global",
			"Local",
			"Global and Local"
		};
		static const char * const pixel_format[16] = {
			"ARGB Indexed",
			"RGB 5:6:5",
			"ARGB 1:5:5:5",
			"ARGB 1:4:4:4",
			"ARGB 8:8:8:8",
			"5",
			"6",
			"7",
			"AYUV Indexed",
			"YUV 5:6:5",
			"AYUV 1:5:5:5",
			"AYUV 1:4:4:4",
			"AYUV 8:8:8:8",
			"13",
			"14",
			"15",
		};

		FUNC5(itv, itv->active_output, &vidout);
		FUNC3(itv, 0, &audout);
		FUNC0("Video Output: %s\n", vidout.name);
		FUNC0("Audio Output: %s (Stereo/Bilingual: %s/%s)\n", audout.name,
			audio_modes[itv->audio_stereo_mode],
			audio_modes[itv->audio_bilingual_mode]);
		if (mode < 0 || mode > OUT_PASSTHROUGH)
			mode = OUT_NONE;
		FUNC0("Output Mode:  %s\n", output_modes[mode]);
		FUNC7(itv, data, CX2341X_OSD_GET_STATE, 0);
		data[0] |= (FUNC8(0x2a00) >> 7) & 0x40;
		FUNC0("Overlay:      %s, Alpha: %s, Pixel Format: %s\n",
			data[0] & 1 ? "On" : "Off",
			alpha_mode[(data[0] >> 1) & 0x3],
			pixel_format[(data[0] >> 3) & 0xf]);
	}
	FUNC0("Tuner:  %s\n",
		FUNC9(IVTV_F_I_RADIO_USER, &itv->i_flags) ? "Radio" : "TV");
	FUNC10(&itv->cxhdl.hdl, itv->v4l2_dev.name);
	FUNC0("Status flags:    0x%08lx\n", itv->i_flags);
	for (i = 0; i < IVTV_MAX_STREAMS; i++) {
		struct ivtv_stream *s = &itv->streams[i];

		if (s->vdev == NULL || s->buffers == 0)
			continue;
		FUNC0("Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n", s->name, s->s_flags,
				(s->buffers - s->q_free.buffers) * 100 / s->buffers,
				(s->buffers * s->buf_size) / 1024, s->buffers);
	}

	FUNC0("Read MPG/VBI: %lld/%lld bytes\n",
			(long long)itv->mpg_data_received,
			(long long)itv->vbi_data_inserted);
	FUNC0("==================  END STATUS CARD #%d  ==================\n",
			itv->instance);

	return 0;
}