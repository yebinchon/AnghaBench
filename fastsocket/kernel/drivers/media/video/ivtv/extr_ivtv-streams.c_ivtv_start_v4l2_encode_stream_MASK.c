#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct ivtv_stream {int type; int subtype; int /*<<< orphan*/  s_flags; scalar_t__ buffers_stolen; int /*<<< orphan*/  name; int /*<<< orphan*/ * vdev; struct ivtv* itv; } ;
struct TYPE_7__ {int /*<<< orphan*/  video_mute_yuv; int /*<<< orphan*/  audio_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  sliced_mpeg_size; int /*<<< orphan*/  inserted_frame; int /*<<< orphan*/  frame; } ;
struct ivtv {int dualwatch_stereo_mode; int v4l2_cap; int /*<<< orphan*/  capturing; int /*<<< orphan*/  sd_video; int /*<<< orphan*/  sd_audio; TYPE_3__ cxhdl; int /*<<< orphan*/  i_flags; scalar_t__ has_cx23415; void* pgm_info_num; void* pgm_info_offset; scalar_t__ pgm_info_read_idx; scalar_t__ pgm_info_write_idx; TYPE_2__* card; TYPE_1__ vbi; int /*<<< orphan*/  output_mode; int /*<<< orphan*/  search_pack_header; int /*<<< orphan*/  dualwatch_jiffies; int /*<<< orphan*/  vbi_data_inserted; int /*<<< orphan*/  mpg_data_received; } ;
struct TYPE_6__ {int hw_all; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_INITIALIZE_INPUT ; 
 int /*<<< orphan*/  CX2341X_ENC_MISC ; 
 int /*<<< orphan*/  CX2341X_ENC_MUTE_VIDEO ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_DMA_BLOCK_SIZE ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_EVENT_NOTIFICATION ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_NUM_VSYNC_LINES ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_PGM_INDEX_INFO ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_PLACEHOLDER ; 
 int /*<<< orphan*/  CX2341X_ENC_SET_VERT_CROP_LINE ; 
 int /*<<< orphan*/  CX2341X_ENC_START_CAPTURE ; 
 int CX2341X_MBOX_MAX_DATA ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  IVTV_ENC_STREAM_TYPE_MPG 131 
#define  IVTV_ENC_STREAM_TYPE_PCM 130 
#define  IVTV_ENC_STREAM_TYPE_VBI 129 
#define  IVTV_ENC_STREAM_TYPE_YUV 128 
 int /*<<< orphan*/  IVTV_F_I_DIG_RST ; 
 int /*<<< orphan*/  IVTV_F_I_EOS ; 
 int /*<<< orphan*/  IVTV_F_I_RADIO_USER ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 int IVTV_HW_SAA7114 ; 
 int IVTV_HW_SAA7115 ; 
 int IVTV_HW_SAA717X ; 
 int /*<<< orphan*/  IVTV_IRQ_ENC_VBI_CAP ; 
 int /*<<< orphan*/  IVTV_IRQ_ENC_VIM_RST ; 
 int /*<<< orphan*/  IVTV_IRQ_MASK_CAPTURE ; 
 int /*<<< orphan*/  OUT_PASSTHROUGH ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audio ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ivtv*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct ivtv*,void**,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ivtv*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

int FUNC19(struct ivtv_stream *s)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	struct ivtv *itv = s->itv;
	int captype = 0, subtype = 0;
	int enable_passthrough = 0;

	if (s->vdev == NULL)
		return -EINVAL;

	FUNC0("Start encoder stream %s\n", s->name);

	switch (s->type) {
	case IVTV_ENC_STREAM_TYPE_MPG:
		captype = 0;
		subtype = 3;

		/* Stop Passthrough */
		if (itv->output_mode == OUT_PASSTHROUGH) {
			FUNC9(itv, 0);
			enable_passthrough = 1;
		}
		itv->mpg_data_received = itv->vbi_data_inserted = 0;
		itv->dualwatch_jiffies = jiffies;
		itv->dualwatch_stereo_mode = FUNC17(itv->cxhdl.audio_mode);
		itv->search_pack_header = 0;
		break;

	case IVTV_ENC_STREAM_TYPE_YUV:
		if (itv->output_mode == OUT_PASSTHROUGH) {
			captype = 2;
			subtype = 11;	/* video+audio+decoder */
			break;
		}
		captype = 1;
		subtype = 1;
		break;
	case IVTV_ENC_STREAM_TYPE_PCM:
		captype = 1;
		subtype = 2;
		break;
	case IVTV_ENC_STREAM_TYPE_VBI:
		captype = 1;
		subtype = 4;

		itv->vbi.frame = 0;
		itv->vbi.inserted_frame = 0;
		FUNC14(itv->vbi.sliced_mpeg_size,
			0, sizeof(itv->vbi.sliced_mpeg_size));
		break;
	default:
		return -EINVAL;
	}
	s->subtype = subtype;
	s->buffers_stolen = 0;

	/* Clear Streamoff flags in case left from last capture */
	FUNC4(IVTV_F_S_STREAMOFF, &s->s_flags);

	if (FUNC3(&itv->capturing) == 0) {
		int digitizer;

		/* Always use frame based mode. Experiments have demonstrated that byte
		   stream based mode results in dropped frames and corruption. Not often,
		   but occasionally. Many thanks go to Leonard Orb who spent a lot of
		   effort and time trying to trace the cause of the drop outs. */
		/* 1 frame per DMA */
		/*ivtv_vapi(itv, CX2341X_ENC_SET_DMA_BLOCK_SIZE, 2, 128, 0); */
		FUNC11(itv, CX2341X_ENC_SET_DMA_BLOCK_SIZE, 2, 1, 1);

		/* Stuff from Windows, we don't know what it is */
		FUNC11(itv, CX2341X_ENC_SET_VERT_CROP_LINE, 1, 0);
		/* According to the docs, this should be correct. However, this is
		   untested. I don't dare enable this without having tested it.
		   Only very few old cards actually have this hardware combination.
		ivtv_vapi(itv, CX2341X_ENC_SET_VERT_CROP_LINE, 1,
			((itv->hw_flags & IVTV_HW_SAA7114) && itv->is_60hz) ? 10001 : 0);
		*/
		FUNC11(itv, CX2341X_ENC_MISC, 2, 3, !itv->has_cx23415);
		FUNC11(itv, CX2341X_ENC_MISC, 2, 8, 0);
		FUNC11(itv, CX2341X_ENC_MISC, 2, 4, 1);
		FUNC11(itv, CX2341X_ENC_MISC, 1, 12);

		/* assign placeholder */
		FUNC11(itv, CX2341X_ENC_SET_PLACEHOLDER, 12,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

		if (itv->card->hw_all & (IVTV_HW_SAA7115 | IVTV_HW_SAA717X))
		    digitizer = 0xF1;
		else if (itv->card->hw_all & IVTV_HW_SAA7114)
		    digitizer = 0xEF;
		else /* cx25840 */
		    digitizer = 0x140;

		FUNC11(itv, CX2341X_ENC_SET_NUM_VSYNC_LINES, 2, digitizer, digitizer);

		/* Setup VBI */
		if (itv->v4l2_cap & V4L2_CAP_VBI_CAPTURE) {
			FUNC13(itv);
		}

		/* assign program index info. Mask 7: select I/P/B, Num_req: 400 max */
		FUNC12(itv, data, CX2341X_ENC_SET_PGM_INDEX_INFO, 2, 7, 400);
		itv->pgm_info_offset = data[0];
		itv->pgm_info_num = data[1];
		itv->pgm_info_write_idx = 0;
		itv->pgm_info_read_idx = 0;

		FUNC0("PGM Index at 0x%08x with %d elements\n",
				itv->pgm_info_offset, itv->pgm_info_num);

		/* Setup API for Stream */
		FUNC6(&itv->cxhdl);

		/* mute if capturing radio */
		if (FUNC16(IVTV_F_I_RADIO_USER, &itv->i_flags))
			FUNC11(itv, CX2341X_ENC_MUTE_VIDEO, 1,
				1 | (FUNC17(itv->cxhdl.video_mute_yuv) << 8));
	}

	/* Vsync Setup */
	if (itv->has_cx23415 && !FUNC15(IVTV_F_I_DIG_RST, &itv->i_flags)) {
		/* event notification (on) */
		FUNC11(itv, CX2341X_ENC_SET_EVENT_NOTIFICATION, 4, 0, 1, IVTV_IRQ_ENC_VIM_RST, -1);
		FUNC7(itv, IVTV_IRQ_ENC_VIM_RST);
	}

	if (FUNC3(&itv->capturing) == 0) {
		/* Clear all Pending Interrupts */
		FUNC10(itv, IVTV_IRQ_MASK_CAPTURE);

		FUNC4(IVTV_F_I_EOS, &itv->i_flags);

		FUNC5(&itv->cxhdl, 1);

		/* Initialize Digitizer for Capture */
		/* Avoid tinny audio problem - ensure audio clocks are going */
		FUNC18(itv->sd_audio, audio, s_stream, 1);
		/* Avoid unpredictable PCI bus hang - disable video clocks */
		FUNC18(itv->sd_video, video, s_stream, 0);
		FUNC8(300, 1);
		FUNC11(itv, CX2341X_ENC_INITIALIZE_INPUT, 0);
		FUNC18(itv->sd_video, video, s_stream, 1);
	}

	/* begin_capture */
	if (FUNC11(itv, CX2341X_ENC_START_CAPTURE, 2, captype, subtype))
	{
		FUNC1( "Error starting capture!\n");
		return -EINVAL;
	}

	/* Start Passthrough */
	if (enable_passthrough) {
		FUNC9(itv, 1);
	}

	if (s->type == IVTV_ENC_STREAM_TYPE_VBI)
		FUNC7(itv, IVTV_IRQ_ENC_VBI_CAP);
	else
		FUNC7(itv, IVTV_IRQ_MASK_CAPTURE);

	/* you're live! sit back and await interrupts :) */
	FUNC2(&itv->capturing);
	return 0;
}