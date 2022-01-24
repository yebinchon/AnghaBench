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
struct cx18_stream {scalar_t__ type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; int /*<<< orphan*/  handle; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  i_flags; struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_CAPTURE_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t CX18_ENC_STREAM_TYPE_IDX ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ; 
 size_t CX18_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  CX18_F_I_ENC_PAUSED ; 
 int /*<<< orphan*/  CX18_F_S_APPL_IO ; 
 int /*<<< orphan*/  CX18_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  CX18_F_S_STREAMOFF ; 
 int EBUSY ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cx18_open_id*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18_stream*) ; 
 scalar_t__ FUNC5 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct cx18_open_id *id)
{
	struct cx18 *cx = id->cx;
	struct cx18_stream *s = &cx->streams[id->type];
	struct cx18_stream *s_vbi;
	struct cx18_stream *s_idx;

	if (s->type == CX18_ENC_STREAM_TYPE_RAD) {
		/* you cannot read from these stream types. */
		return -EPERM;
	}

	/* Try to claim this stream. */
	if (FUNC3(id, s->type))
		return -EBUSY;

	/* If capture is already in progress, then we also have to
	   do nothing extra. */
	if (FUNC11(CX18_F_S_STREAMOFF, &s->s_flags) ||
	    FUNC10(CX18_F_S_STREAMING, &s->s_flags)) {
		FUNC8(CX18_F_S_APPL_IO, &s->s_flags);
		return 0;
	}

	/* Start associated VBI or IDX stream capture if required */
	s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
	s_idx = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
	if (s->type == CX18_ENC_STREAM_TYPE_MPG) {
		/*
		 * The VBI and IDX streams should have been claimed
		 * automatically, if for internal use, when the MPG stream was
		 * claimed.  We only need to start these streams capturing.
		 */
		if (FUNC11(CX18_F_S_INTERNAL_USE, &s_idx->s_flags) &&
		    !FUNC10(CX18_F_S_STREAMING, &s_idx->s_flags)) {
			if (FUNC5(s_idx)) {
				FUNC1("IDX capture start failed\n");
				FUNC2(CX18_F_S_STREAMING, &s_idx->s_flags);
				goto start_failed;
			}
			FUNC0("IDX capture started\n");
		}
		if (FUNC11(CX18_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
		    !FUNC10(CX18_F_S_STREAMING, &s_vbi->s_flags)) {
			if (FUNC5(s_vbi)) {
				FUNC1("VBI capture start failed\n");
				FUNC2(CX18_F_S_STREAMING, &s_vbi->s_flags);
				goto start_failed;
			}
			FUNC0("VBI insertion started\n");
		}
	}

	/* Tell the card to start capturing */
	if (!FUNC5(s)) {
		/* We're done */
		FUNC8(CX18_F_S_APPL_IO, &s->s_flags);
		/* Resume a possibly paused encoder */
		if (FUNC9(CX18_F_I_ENC_PAUSED, &cx->i_flags))
			FUNC7(cx, CX18_CPU_CAPTURE_PAUSE, 1, s->handle);
		return 0;
	}

start_failed:
	FUNC1("Failed to start capturing for stream %s\n", s->name);

	/*
	 * The associated VBI and IDX streams for internal use are released
	 * automatically when the MPG stream is released.  We only need to stop
	 * the associated stream.
	 */
	if (s->type == CX18_ENC_STREAM_TYPE_MPG) {
		/* Stop the IDX stream which is always for internal use */
		if (FUNC11(CX18_F_S_STREAMING, &s_idx->s_flags)) {
			FUNC6(s_idx, 0);
			FUNC2(CX18_F_S_STREAMING, &s_idx->s_flags);
		}
		/* Stop the VBI stream, if only running for internal use */
		if (FUNC11(CX18_F_S_STREAMING, &s_vbi->s_flags) &&
		    !FUNC11(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
			FUNC6(s_vbi, 0);
			FUNC2(CX18_F_S_STREAMING, &s_vbi->s_flags);
		}
	}
	FUNC2(CX18_F_S_STREAMING, &s->s_flags);
	FUNC4(s); /* Also releases associated streams */
	return -EIO;
}