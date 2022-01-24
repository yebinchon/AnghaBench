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
struct v4l2_m2m_dev {int /*<<< orphan*/  job_spinlock; struct v4l2_m2m_ctx* curr_ctx; } ;
struct v4l2_m2m_ctx {int job_flags; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int TRANS_QUEUED ; 
 int TRANS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_m2m_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_m2m_ctx*) ; 

void FUNC6(struct v4l2_m2m_dev *m2m_dev,
			 struct v4l2_m2m_ctx *m2m_ctx)
{
	unsigned long flags;

	FUNC2(&m2m_dev->job_spinlock, flags);
	if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx != m2m_ctx) {
		FUNC3(&m2m_dev->job_spinlock, flags);
		FUNC0("Called by an instance not currently running\n");
		return;
	}

	FUNC1(&m2m_dev->curr_ctx->queue);
	m2m_dev->curr_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
	m2m_dev->curr_ctx = NULL;

	FUNC3(&m2m_dev->job_spinlock, flags);

	/* This instance might have more buffers ready, but since we do not
	 * allow more than one job on the job_queue per instance, each has
	 * to be scheduled separately after the previous one finishes. */
	FUNC5(m2m_ctx);
	FUNC4(m2m_dev);
}