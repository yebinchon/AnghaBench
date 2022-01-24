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
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * vdev; } ;
struct ivtv {scalar_t__ output_mode; int /*<<< orphan*/  cxhdl; int /*<<< orphan*/  capturing; int /*<<< orphan*/  decoding; struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_START_PLAYBACK ; 
 int /*<<< orphan*/  CX2341X_DEC_STOP_PLAYBACK ; 
 int /*<<< orphan*/  CX2341X_ENC_START_CAPTURE ; 
 int /*<<< orphan*/  CX2341X_ENC_STOP_CAPTURE ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t IVTV_DEC_STREAM_TYPE_YUV ; 
 size_t IVTV_ENC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  IVTV_F_S_PASSTHROUGH ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 scalar_t__ OUT_NONE ; 
 scalar_t__ OUT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct ivtv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv*,int /*<<< orphan*/ ,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct ivtv *itv, int enable)
{
	struct ivtv_stream *yuv_stream = &itv->streams[IVTV_ENC_STREAM_TYPE_YUV];
	struct ivtv_stream *dec_stream = &itv->streams[IVTV_DEC_STREAM_TYPE_YUV];

	if (yuv_stream->vdev == NULL || dec_stream->vdev == NULL)
		return -EINVAL;

	FUNC0("ivtv ioctl: Select passthrough mode\n");

	/* Prevent others from starting/stopping streams while we
	   initiate/terminate passthrough mode */
	if (enable) {
		if (itv->output_mode == OUT_PASSTHROUGH) {
			return 0;
		}
		if (FUNC7(itv, OUT_PASSTHROUGH) != OUT_PASSTHROUGH)
			return -EBUSY;

		/* Fully initialize stream, and then unflag init */
		FUNC10(IVTV_F_S_PASSTHROUGH, &dec_stream->s_flags);
		FUNC10(IVTV_F_S_STREAMING, &dec_stream->s_flags);

		/* Setup YUV Decoder */
		FUNC8(dec_stream);

		/* Start Decoder */
		FUNC9(itv, CX2341X_DEC_START_PLAYBACK, 2, 0, 1);
		FUNC2(&itv->decoding);

		/* Setup capture if not already done */
		if (FUNC3(&itv->capturing) == 0) {
			FUNC6(&itv->cxhdl);
			FUNC5(&itv->cxhdl, 1);
		}

		/* Start Passthrough Mode */
		FUNC9(itv, CX2341X_ENC_START_CAPTURE, 2, 2, 11);
		FUNC2(&itv->capturing);
		return 0;
	}

	if (itv->output_mode != OUT_PASSTHROUGH)
		return 0;

	/* Stop Passthrough Mode */
	FUNC9(itv, CX2341X_ENC_STOP_CAPTURE, 3, 1, 2, 11);
	FUNC9(itv, CX2341X_DEC_STOP_PLAYBACK, 3, 1, 0, 0);

	FUNC1(&itv->capturing);
	FUNC1(&itv->decoding);
	FUNC4(IVTV_F_S_PASSTHROUGH, &dec_stream->s_flags);
	FUNC4(IVTV_F_S_STREAMING, &dec_stream->s_flags);
	itv->output_mode = OUT_NONE;
	if (FUNC3(&itv->capturing) == 0)
		FUNC5(&itv->cxhdl, 0);

	return 0;
}