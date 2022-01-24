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
struct cx18_stream {int id; size_t type; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t CX18_ENC_STREAM_TYPE_IDX ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ; 
 size_t CX18_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  CX18_F_S_CLAIMED ; 
 int /*<<< orphan*/  CX18_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18_stream*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct cx18_stream *s)
{
	struct cx18 *cx = s->cx;
	struct cx18_stream *s_assoc;

	s->id = -1;
	if (s->type == CX18_ENC_STREAM_TYPE_IDX) {
		/*
		 * The IDX stream is only used internally, and can
		 * only be indirectly unclaimed by unclaiming the MPG stream.
		 */
		return;
	}

	if (s->type == CX18_ENC_STREAM_TYPE_VBI &&
		FUNC4(CX18_F_S_INTERNAL_USE, &s->s_flags)) {
		/* this stream is still in use internally */
		return;
	}
	if (!FUNC3(CX18_F_S_CLAIMED, &s->s_flags)) {
		FUNC0("Release stream %s not in use!\n", s->name);
		return;
	}

	FUNC2(s);

	/*
	 * CX18_ENC_STREAM_TYPE_MPG needs to release the
	 * CX18_ENC_STREAM_TYPE_VBI and/or CX18_ENC_STREAM_TYPE_IDX streams.
	 *
	 * For all other streams we're done.
	 */
	if (s->type != CX18_ENC_STREAM_TYPE_MPG)
		return;

	/* Unclaim the associated MPEG Index stream */
	s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
	if (FUNC3(CX18_F_S_INTERNAL_USE, &s_assoc->s_flags)) {
		FUNC1(CX18_F_S_CLAIMED, &s_assoc->s_flags);
		FUNC2(s_assoc);
	}

	/* Unclaim the associated VBI stream */
	s_assoc = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
	if (FUNC3(CX18_F_S_INTERNAL_USE, &s_assoc->s_flags)) {
		if (s_assoc->id == -1) {
			/*
			 * The VBI stream is not still claimed by a file
			 * descriptor, so completely unclaim it.
			 */
			FUNC1(CX18_F_S_CLAIMED, &s_assoc->s_flags);
			FUNC2(s_assoc);
		}
	}
}