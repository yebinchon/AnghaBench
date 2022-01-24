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
struct ivtv_stream {scalar_t__ type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  i_flags; struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_PAUSE_ENCODER ; 
 int EBUSY ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_VOUT ; 
 scalar_t__ IVTV_DEC_STREAM_TYPE_YUV ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ; 
 scalar_t__ IVTV_ENC_STREAM_TYPE_RAD ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_I_ENC_PAUSED ; 
 int /*<<< orphan*/  IVTV_F_S_APPL_IO ; 
 int /*<<< orphan*/  IVTV_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ivtv_open_id*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*) ; 
 scalar_t__ FUNC5 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct ivtv_open_id *id)
{
	struct ivtv *itv = id->itv;
	struct ivtv_stream *s = &itv->streams[id->type];
	struct ivtv_stream *s_vbi;

	if (s->type == IVTV_ENC_STREAM_TYPE_RAD ||
	    s->type == IVTV_DEC_STREAM_TYPE_MPG ||
	    s->type == IVTV_DEC_STREAM_TYPE_YUV ||
	    s->type == IVTV_DEC_STREAM_TYPE_VOUT) {
		/* you cannot read from these stream types. */
		return -EPERM;
	}

	/* Try to claim this stream. */
	if (FUNC3(id, s->type))
		return -EBUSY;

	/* This stream does not need to start capturing */
	if (s->type == IVTV_DEC_STREAM_TYPE_VBI) {
		FUNC8(IVTV_F_S_APPL_IO, &s->s_flags);
		return 0;
	}

	/* If capture is already in progress, then we also have to
	   do nothing extra. */
	if (FUNC11(IVTV_F_S_STREAMOFF, &s->s_flags) || FUNC10(IVTV_F_S_STREAMING, &s->s_flags)) {
		FUNC8(IVTV_F_S_APPL_IO, &s->s_flags);
		return 0;
	}

	/* Start VBI capture if required */
	s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
	if (s->type == IVTV_ENC_STREAM_TYPE_MPG &&
	    FUNC11(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
	    !FUNC10(IVTV_F_S_STREAMING, &s_vbi->s_flags)) {
		/* Note: the IVTV_ENC_STREAM_TYPE_VBI is claimed
		   automatically when the MPG stream is claimed.
		   We only need to start the VBI capturing. */
		if (FUNC5(s_vbi)) {
			FUNC1("VBI capture start failed\n");

			/* Failure, clean up and return an error */
			FUNC2(IVTV_F_S_STREAMING, &s_vbi->s_flags);
			FUNC2(IVTV_F_S_STREAMING, &s->s_flags);
			/* also releases the associated VBI stream */
			FUNC4(s);
			return -EIO;
		}
		FUNC0("VBI insertion started\n");
	}

	/* Tell the card to start capturing */
	if (!FUNC5(s)) {
		/* We're done */
		FUNC8(IVTV_F_S_APPL_IO, &s->s_flags);
		/* Resume a possibly paused encoder */
		if (FUNC9(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
			FUNC7(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 1);
		return 0;
	}

	/* failure, clean up */
	FUNC1("Failed to start capturing for stream %s\n", s->name);

	/* Note: the IVTV_ENC_STREAM_TYPE_VBI is released
	   automatically when the MPG stream is released.
	   We only need to stop the VBI capturing. */
	if (s->type == IVTV_ENC_STREAM_TYPE_MPG &&
	    FUNC11(IVTV_F_S_STREAMING, &s_vbi->s_flags)) {
		FUNC6(s_vbi, 0);
		FUNC2(IVTV_F_S_STREAMING, &s_vbi->s_flags);
	}
	FUNC2(IVTV_F_S_STREAMING, &s->s_flags);
	FUNC4(s);
	return -EIO;
}