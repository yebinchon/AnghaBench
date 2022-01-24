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
struct videobuf_queue {int /*<<< orphan*/  type; } ;
struct videobuf_buffer {int /*<<< orphan*/  state; int /*<<< orphan*/  queue; } ;
struct v4l2_m2m_queue_ctx {int /*<<< orphan*/  num_rdy; int /*<<< orphan*/  rdy_queue; } ;
struct v4l2_m2m_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEOBUF_QUEUED ; 
 struct v4l2_m2m_queue_ctx* FUNC0 (struct v4l2_m2m_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct v4l2_m2m_ctx *m2m_ctx, struct videobuf_queue *vq,
			struct videobuf_buffer *vb)
{
	struct v4l2_m2m_queue_ctx *q_ctx;

	q_ctx = FUNC0(m2m_ctx, vq->type);
	if (!q_ctx)
		return;

	FUNC1(&vb->queue, &q_ctx->rdy_queue);
	q_ctx->num_rdy++;

	vb->state = VIDEOBUF_QUEUED;
}