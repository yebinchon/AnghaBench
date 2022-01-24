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
struct TYPE_4__ {int /*<<< orphan*/  depth; } ;
struct cx18_stream {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  waitq; TYPE_2__ q_full; int /*<<< orphan*/  s_flags; struct cx18* cx; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; int /*<<< orphan*/  m_flags; } ;
struct TYPE_3__ {struct cx18_mdl sliced_mpeg_mdl; } ;
struct cx18 {TYPE_1__ vbi; scalar_t__ dualwatch_jiffies; struct cx18_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ; 
 size_t CX18_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  CX18_F_M_NEED_SWAP ; 
 int /*<<< orphan*/  CX18_F_S_APPL_IO ; 
 int /*<<< orphan*/  CX18_F_S_INTERNAL_USE ; 
 int /*<<< orphan*/  CX18_F_S_STREAMING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct cx18_mdl* FUNC3 (struct cx18_stream*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18_mdl*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*,struct cx18_mdl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18_stream*,struct cx18_mdl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct cx18_mdl *FUNC16(struct cx18_stream *s, int non_block,
				     int *err)
{
	struct cx18 *cx = s->cx;
	struct cx18_stream *s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
	struct cx18_mdl *mdl;
	FUNC1(wait);

	*err = 0;
	while (1) {
		if (s->type == CX18_ENC_STREAM_TYPE_MPG) {
			/* Process pending program updates and VBI data */
			if (FUNC15(jiffies, cx->dualwatch_jiffies + FUNC9(1000))) {
				cx->dualwatch_jiffies = jiffies;
				FUNC4(cx);
			}
			if (FUNC14(CX18_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
			    !FUNC14(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
				while ((mdl = FUNC3(s_vbi,
							   &s_vbi->q_full))) {
					/* byteswap and process VBI data */
					FUNC6(cx, mdl,
							      s_vbi->type);
					FUNC7(s_vbi, mdl);
				}
			}
			mdl = &cx->vbi.sliced_mpeg_mdl;
			if (mdl->readpos != mdl->bytesused)
				return mdl;
		}

		/* do we have new data? */
		mdl = FUNC3(s, &s->q_full);
		if (mdl) {
			if (!FUNC13(CX18_F_M_NEED_SWAP,
						&mdl->m_flags))
				return mdl;
			if (s->type == CX18_ENC_STREAM_TYPE_MPG)
				/* byteswap MPG data */
				FUNC5(mdl);
			else {
				/* byteswap and process VBI data */
				FUNC6(cx, mdl, s->type);
			}
			return mdl;
		}

		/* return if end of stream */
		if (!FUNC14(CX18_F_S_STREAMING, &s->s_flags)) {
			FUNC0("EOS %s\n", s->name);
			return NULL;
		}

		/* return if file was opened with O_NONBLOCK */
		if (non_block) {
			*err = -EAGAIN;
			return NULL;
		}

		/* wait for more data to arrive */
		FUNC10(&s->waitq, &wait, TASK_INTERRUPTIBLE);
		/* New buffers might have become available before we were added
		   to the waitqueue */
		if (!FUNC2(&s->q_full.depth))
			FUNC11();
		FUNC8(&s->waitq, &wait);
		if (FUNC12(current)) {
			/* return if a signal was received */
			FUNC0("User stopped %s\n", s->name);
			*err = -EINTR;
			return NULL;
		}
	}
}