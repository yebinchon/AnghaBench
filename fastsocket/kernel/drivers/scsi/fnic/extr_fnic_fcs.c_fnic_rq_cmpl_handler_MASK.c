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
struct fnic {unsigned int rq_count; TYPE_1__* lport; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * cq; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  fnic_alloc_rq_frame ; 
 int /*<<< orphan*/  fnic_rq_cmpl_handler_cont ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct fnic *fnic, int rq_work_to_do)
{
	unsigned int tot_rq_work_done = 0, cur_work_done;
	unsigned int i;
	int err;

	for (i = 0; i < fnic->rq_count; i++) {
		cur_work_done = FUNC1(&fnic->cq[i], rq_work_to_do,
						fnic_rq_cmpl_handler_cont,
						NULL);
		if (cur_work_done) {
			err = FUNC2(&fnic->rq[i], fnic_alloc_rq_frame);
			if (err)
				FUNC0(KERN_ERR, fnic->lport->host,
					     "fnic_alloc_rq_frame cant alloc"
					     " frame\n");
		}
		tot_rq_work_done += cur_work_done;
	}

	return tot_rq_work_done;
}