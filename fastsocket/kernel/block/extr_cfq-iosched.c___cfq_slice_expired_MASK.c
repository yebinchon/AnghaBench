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
struct cfq_queue {int slice_resid; int slice_end; TYPE_3__* cfqg; int /*<<< orphan*/  sort_list; } ;
struct TYPE_4__ {int /*<<< orphan*/ * active; } ;
struct cfq_data {TYPE_2__* active_cic; TYPE_1__ grp_service_tree; struct cfq_queue* active_queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  rb_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct cfq_queue*) ; 
 scalar_t__ FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*) ; 
 scalar_t__ FUNC5 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfq_data*,TYPE_3__*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfq_data*,struct cfq_queue*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct cfq_data*,struct cfq_queue*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct cfq_data *cfqd, struct cfq_queue *cfqq,
		    bool timed_out)
{
	FUNC11(cfqd, cfqq, "slice expired t=%d", timed_out);

	if (FUNC5(cfqq))
		FUNC9(cfqd, cfqq);

	FUNC7(cfqq);
	FUNC6(cfqq);

	/*
	 * If this cfqq is shared between multiple processes, check to
	 * make sure that those processes are still issuing I/Os within
	 * the mean seek distance.  If not, it may be time to break the
	 * queues apart again.
	 */
	if (FUNC2(cfqq) && FUNC0(cfqq))
		FUNC12(cfqq);

	/*
	 * store what was left of this slice, if the queue idled/timed out
	 */
	if (timed_out && !FUNC4(cfqq)) {
		cfqq->slice_resid = cfqq->slice_end - jiffies;
		FUNC11(cfqd, cfqq, "resid=%ld", cfqq->slice_resid);
	}

	FUNC10(cfqd, cfqq->cfqg, cfqq);

	if (FUNC3(cfqq) && FUNC1(&cfqq->sort_list))
		FUNC8(cfqd, cfqq);

	FUNC13(cfqd, cfqq);

	if (cfqq == cfqd->active_queue)
		cfqd->active_queue = NULL;

	if (&cfqq->cfqg->rb_node == cfqd->grp_service_tree.active)
		cfqd->grp_service_tree.active = NULL;

	if (cfqd->active_cic) {
		FUNC14(cfqd->active_cic->ioc);
		cfqd->active_cic = NULL;
	}
}