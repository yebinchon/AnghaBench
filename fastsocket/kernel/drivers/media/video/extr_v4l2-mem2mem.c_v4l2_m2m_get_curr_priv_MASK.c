#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_m2m_dev {int /*<<< orphan*/  job_spinlock; TYPE_1__* curr_ctx; } ;
struct TYPE_2__ {void* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void *FUNC2(struct v4l2_m2m_dev *m2m_dev)
{
	unsigned long flags;
	void *ret = NULL;

	FUNC0(&m2m_dev->job_spinlock, flags);
	if (m2m_dev->curr_ctx)
		ret = m2m_dev->curr_ctx->priv;
	FUNC1(&m2m_dev->job_spinlock, flags);

	return ret;
}