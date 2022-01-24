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
struct TYPE_4__ {struct fc_bsg_job* sg_list; } ;
struct TYPE_3__ {struct fc_bsg_job* sg_list; } ;
struct fc_bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; int /*<<< orphan*/  dev; int /*<<< orphan*/  job_lock; scalar_t__ ref_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_bsg_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct fc_bsg_job *job)
{
	unsigned long flags;

	FUNC2(&job->job_lock, flags);
	if (job->ref_cnt) {
		FUNC3(&job->job_lock, flags);
		return;
	}
	FUNC3(&job->job_lock, flags);

	FUNC1(job->dev);	/* release reference for the request */

	FUNC0(job->request_payload.sg_list);
	FUNC0(job->reply_payload.sg_list);
	FUNC0(job);
}