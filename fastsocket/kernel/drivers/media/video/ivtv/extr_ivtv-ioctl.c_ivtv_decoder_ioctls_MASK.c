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
typedef  int /*<<< orphan*/  vc ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  vsync_field; } ;
struct video_event {int flags; int /*<<< orphan*/  type; TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct video_command {int flags; int /*<<< orphan*/  type; TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct ivtv_stream {int dma_pts; int /*<<< orphan*/  type; } ;
struct ivtv_open_id {size_t type; int yuv_frames; struct ivtv* itv; } ;
struct ivtv_dma_frame {int /*<<< orphan*/ * y_source; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int lace_mode; } ;
struct ivtv {int v4l2_cap; int* last_dec_timing; unsigned long speed_mute_audio; unsigned long audio_stereo_mode; unsigned long audio_bilingual_mode; int /*<<< orphan*/  serialize_lock; int /*<<< orphan*/  event_waitq; int /*<<< orphan*/  i_flags; TYPE_1__ yuv_info; int /*<<< orphan*/  output_mode; int /*<<< orphan*/  decoding; struct ivtv_stream* streams; } ;
struct file {int f_flags; int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
#define  AUDIO_BILINGUAL_CHANNEL_SELECT 141 
#define  AUDIO_CHANNEL_SELECT 140 
#define  AUDIO_SET_MUTE 139 
 unsigned long AUDIO_STEREO_SWAPPED ; 
 int /*<<< orphan*/  CX2341X_DEC_GET_TIMING_INFO ; 
 int /*<<< orphan*/  CX2341X_DEC_SET_AUDIO_MODE ; 
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  IVTV_DEC_STREAM_TYPE_MPG ; 
 int /*<<< orphan*/  IVTV_F_I_EV_DEC_STOPPED ; 
 int /*<<< orphan*/  IVTV_F_I_EV_VSYNC ; 
 int /*<<< orphan*/  IVTV_F_I_EV_VSYNC_ENABLED ; 
 int /*<<< orphan*/  IVTV_F_I_EV_VSYNC_FIELD ; 
 int /*<<< orphan*/  IVTV_F_I_VALID_DEC_TIMINGS ; 
#define  IVTV_IOC_DMA_FRAME 138 
 int IVTV_YUV_MODE_MASK ; 
 int IVTV_YUV_MODE_PROGRESSIVE ; 
 int /*<<< orphan*/  OUT_UDMA_YUV ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  VIDEO_CMD_CONTINUE ; 
 int /*<<< orphan*/  VIDEO_CMD_FREEZE ; 
 int /*<<< orphan*/  VIDEO_CMD_PLAY ; 
 int /*<<< orphan*/  VIDEO_CMD_STOP ; 
 int VIDEO_CMD_STOP_IMMEDIATELY ; 
 int VIDEO_CMD_STOP_TO_BLACK ; 
#define  VIDEO_COMMAND 137 
#define  VIDEO_CONTINUE 136 
 int /*<<< orphan*/  VIDEO_EVENT_DECODER_STOPPED ; 
 int /*<<< orphan*/  VIDEO_EVENT_VSYNC ; 
#define  VIDEO_FREEZE 135 
#define  VIDEO_GET_EVENT 134 
#define  VIDEO_GET_FRAME_COUNT 133 
#define  VIDEO_GET_PTS 132 
#define  VIDEO_PLAY 131 
#define  VIDEO_SELECT_SOURCE 130 
 unsigned long VIDEO_SOURCE_DEMUX ; 
#define  VIDEO_STOP 129 
#define  VIDEO_TRY_COMMAND 128 
 int /*<<< orphan*/  VIDEO_VSYNC_FIELD_EVEN ; 
 int /*<<< orphan*/  VIDEO_VSYNC_FIELD_ODD ; 
 int /*<<< orphan*/  VIDEO_VSYNC_FIELD_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct ivtv_open_id* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC8 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ivtv_open_id*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct ivtv*,int /*<<< orphan*/ ,int,unsigned long,unsigned long) ; 
 int FUNC13 (struct ivtv*,struct ivtv_open_id*,struct video_event*,int) ; 
 int FUNC14 (struct ivtv*,struct ivtv_dma_frame*) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct video_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC25(struct file *filp, unsigned int cmd, void *arg)
{
	struct ivtv_open_id *id = FUNC5(filp->private_data);
	struct ivtv *itv = id->itv;
	int nonblocking = filp->f_flags & O_NONBLOCK;
	struct ivtv_stream *s = &itv->streams[id->type];
	unsigned long iarg = (unsigned long)arg;

	switch (cmd) {
	case IVTV_IOC_DMA_FRAME: {
		struct ivtv_dma_frame *args = arg;

		FUNC2("IVTV_IOC_DMA_FRAME\n");
		if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
			return -EINVAL;
		if (args->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
			return -EINVAL;
		if (itv->output_mode == OUT_UDMA_YUV && args->y_source == NULL)
			return 0;
		if (FUNC11(id, id->type)) {
			return -EBUSY;
		}
		if (FUNC10(itv, OUT_UDMA_YUV) != OUT_UDMA_YUV) {
			FUNC9(s);
			return -EBUSY;
		}
		/* Mark that this file handle started the UDMA_YUV mode */
		id->yuv_frames = 1;
		if (args->y_source == NULL)
			return 0;
		return FUNC14(itv, args);
	}

	case VIDEO_GET_PTS: {
		u32 data[CX2341X_MBOX_MAX_DATA];
		u64 *pts = arg;

		FUNC2("VIDEO_GET_PTS\n");
		if (s->type < IVTV_DEC_STREAM_TYPE_MPG) {
			*pts = s->dma_pts;
			break;
		}
		if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
			return -EINVAL;

		if (FUNC24(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
			*pts = (u64) ((u64)itv->last_dec_timing[2] << 32) |
					(u64)itv->last_dec_timing[1];
			break;
		}
		*pts = 0;
		if (FUNC4(&itv->decoding)) {
			if (FUNC7(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
				FUNC3("GET_TIMING: couldn't read clock\n");
				return -EIO;
			}
			FUNC15(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
			FUNC21(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
			*pts = (u64) ((u64) data[2] << 32) | (u64) data[1];
			/*timing->scr = (u64) (((u64) data[4] << 32) | (u64) (data[3]));*/
		}
		break;
	}

	case VIDEO_GET_FRAME_COUNT: {
		u32 data[CX2341X_MBOX_MAX_DATA];
		u64 *frame = arg;

		FUNC2("VIDEO_GET_FRAME_COUNT\n");
		if (s->type < IVTV_DEC_STREAM_TYPE_MPG) {
			*frame = 0;
			break;
		}
		if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
			return -EINVAL;

		if (FUNC24(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags)) {
			*frame = itv->last_dec_timing[0];
			break;
		}
		*frame = 0;
		if (FUNC4(&itv->decoding)) {
			if (FUNC7(itv, CX2341X_DEC_GET_TIMING_INFO, 5, data)) {
				FUNC3("GET_TIMING: couldn't read clock\n");
				return -EIO;
			}
			FUNC15(itv->last_dec_timing, data, sizeof(itv->last_dec_timing));
			FUNC21(IVTV_F_I_VALID_DEC_TIMINGS, &itv->i_flags);
			*frame = data[0];
		}
		break;
	}

	case VIDEO_PLAY: {
		struct video_command vc;

		FUNC2("VIDEO_PLAY\n");
		FUNC16(&vc, 0, sizeof(vc));
		vc.cmd = VIDEO_CMD_PLAY;
		return FUNC13(itv, id, &vc, 0);
	}

	case VIDEO_STOP: {
		struct video_command vc;

		FUNC2("VIDEO_STOP\n");
		FUNC16(&vc, 0, sizeof(vc));
		vc.cmd = VIDEO_CMD_STOP;
		vc.flags = VIDEO_CMD_STOP_TO_BLACK | VIDEO_CMD_STOP_IMMEDIATELY;
		return FUNC13(itv, id, &vc, 0);
	}

	case VIDEO_FREEZE: {
		struct video_command vc;

		FUNC2("VIDEO_FREEZE\n");
		FUNC16(&vc, 0, sizeof(vc));
		vc.cmd = VIDEO_CMD_FREEZE;
		return FUNC13(itv, id, &vc, 0);
	}

	case VIDEO_CONTINUE: {
		struct video_command vc;

		FUNC2("VIDEO_CONTINUE\n");
		FUNC16(&vc, 0, sizeof(vc));
		vc.cmd = VIDEO_CMD_CONTINUE;
		return FUNC13(itv, id, &vc, 0);
	}

	case VIDEO_COMMAND:
	case VIDEO_TRY_COMMAND: {
		struct video_command *vc = arg;
		int try = (cmd == VIDEO_TRY_COMMAND);

		if (try)
			FUNC2("VIDEO_TRY_COMMAND %d\n", vc->cmd);
		else
			FUNC2("VIDEO_COMMAND %d\n", vc->cmd);
		return FUNC13(itv, id, vc, try);
	}

	case VIDEO_GET_EVENT: {
		struct video_event *ev = arg;
		FUNC0(wait);

		FUNC2("VIDEO_GET_EVENT\n");
		if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
			return -EINVAL;
		FUNC16(ev, 0, sizeof(*ev));
		FUNC21(IVTV_F_I_EV_VSYNC_ENABLED, &itv->i_flags);

		while (1) {
			if (FUNC23(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags))
				ev->type = VIDEO_EVENT_DECODER_STOPPED;
			else if (FUNC23(IVTV_F_I_EV_VSYNC, &itv->i_flags)) {
				ev->type = VIDEO_EVENT_VSYNC;
				ev->u.vsync_field = FUNC24(IVTV_F_I_EV_VSYNC_FIELD, &itv->i_flags) ?
					VIDEO_VSYNC_FIELD_ODD : VIDEO_VSYNC_FIELD_EVEN;
				if (itv->output_mode == OUT_UDMA_YUV &&
					(itv->yuv_info.lace_mode & IVTV_YUV_MODE_MASK) ==
								IVTV_YUV_MODE_PROGRESSIVE) {
					ev->u.vsync_field = VIDEO_VSYNC_FIELD_PROGRESSIVE;
				}
			}
			if (ev->type)
				return 0;
			if (nonblocking)
				return -EAGAIN;
			/* Wait for event. Note that serialize_lock is locked,
			   so to allow other processes to access the driver while
			   we are waiting unlock first and later lock again. */
			FUNC18(&itv->serialize_lock);
			FUNC19(&itv->event_waitq, &wait, TASK_INTERRUPTIBLE);
			if (!FUNC24(IVTV_F_I_EV_DEC_STOPPED, &itv->i_flags) &&
			    !FUNC24(IVTV_F_I_EV_VSYNC, &itv->i_flags))
				FUNC20();
			FUNC6(&itv->event_waitq, &wait);
			FUNC17(&itv->serialize_lock);
			if (FUNC22(current)) {
				/* return if a signal was received */
				FUNC1("User stopped wait for event\n");
				return -EINTR;
			}
		}
		break;
	}

	case VIDEO_SELECT_SOURCE:
		FUNC2("VIDEO_SELECT_SOURCE\n");
		if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
			return -EINVAL;
		return FUNC8(itv, iarg == VIDEO_SOURCE_DEMUX);

	case AUDIO_SET_MUTE:
		FUNC2("AUDIO_SET_MUTE\n");
		itv->speed_mute_audio = iarg;
		return 0;

	case AUDIO_CHANNEL_SELECT:
		FUNC2("AUDIO_CHANNEL_SELECT\n");
		if (iarg > AUDIO_STEREO_SWAPPED)
			return -EINVAL;
		itv->audio_stereo_mode = iarg;
		FUNC12(itv, CX2341X_DEC_SET_AUDIO_MODE, 2, itv->audio_bilingual_mode, itv->audio_stereo_mode);
		return 0;

	case AUDIO_BILINGUAL_CHANNEL_SELECT:
		FUNC2("AUDIO_BILINGUAL_CHANNEL_SELECT\n");
		if (iarg > AUDIO_STEREO_SWAPPED)
			return -EINVAL;
		itv->audio_bilingual_mode = iarg;
		FUNC12(itv, CX2341X_DEC_SET_AUDIO_MODE, 2, itv->audio_bilingual_mode, itv->audio_stereo_mode);
		return 0;

	default:
		return -EINVAL;
	}
	return 0;
}