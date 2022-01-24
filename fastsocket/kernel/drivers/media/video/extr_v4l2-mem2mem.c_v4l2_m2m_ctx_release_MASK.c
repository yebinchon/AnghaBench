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
struct videobuf_buffer {scalar_t__ state; int /*<<< orphan*/  done; } ;
struct v4l2_m2m_dev {int /*<<< orphan*/  job_spinlock; TYPE_1__* m2m_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  q; } ;
struct TYPE_5__ {int /*<<< orphan*/  q; } ;
struct v4l2_m2m_ctx {int job_flags; TYPE_3__ out_q_ctx; TYPE_2__ cap_q_ctx; int /*<<< orphan*/  queue; int /*<<< orphan*/  priv; struct v4l2_m2m_dev* m2m_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* job_abort ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TRANS_QUEUED ; 
 int TRANS_RUNNING ; 
 scalar_t__ VIDEOBUF_ACTIVE ; 
 scalar_t__ VIDEOBUF_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (char*,struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct videobuf_buffer* FUNC7 (struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct v4l2_m2m_ctx *m2m_ctx)
{
	struct v4l2_m2m_dev *m2m_dev;
	struct videobuf_buffer *vb;
	unsigned long flags;

	m2m_dev = m2m_ctx->m2m_dev;

	FUNC4(&m2m_dev->job_spinlock, flags);
	if (m2m_ctx->job_flags & TRANS_RUNNING) {
		FUNC5(&m2m_dev->job_spinlock, flags);
		m2m_dev->m2m_ops->job_abort(m2m_ctx->priv);
		FUNC1("m2m_ctx %p running, will wait to complete", m2m_ctx);
		vb = FUNC7(m2m_ctx);
		FUNC0(NULL == vb);
		FUNC10(vb->done, vb->state != VIDEOBUF_ACTIVE
				     && vb->state != VIDEOBUF_QUEUED);
	} else if (m2m_ctx->job_flags & TRANS_QUEUED) {
		FUNC3(&m2m_ctx->queue);
		m2m_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
		FUNC5(&m2m_dev->job_spinlock, flags);
		FUNC1("m2m_ctx: %p had been on queue and was removed\n",
			m2m_ctx);
	} else {
		/* Do nothing, was not on queue/running */
		FUNC5(&m2m_dev->job_spinlock, flags);
	}

	FUNC9(&m2m_ctx->cap_q_ctx.q);
	FUNC9(&m2m_ctx->out_q_ctx.q);

	FUNC8(&m2m_ctx->cap_q_ctx.q);
	FUNC8(&m2m_ctx->out_q_ctx.q);

	FUNC2(m2m_ctx);
}