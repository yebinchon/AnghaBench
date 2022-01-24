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
struct cfq_rb_root {int /*<<< orphan*/  min_vdisktime; } ;
struct cfq_queue {unsigned int slice_dispatch; unsigned int allocated_slice; int /*<<< orphan*/  nr_sectors; int /*<<< orphan*/  cfqd; } ;
struct TYPE_2__ {int count; } ;
struct cfq_group {int nr_cfqq; int /*<<< orphan*/  blkg; int /*<<< orphan*/  vdisktime; scalar_t__ saved_workload_slice; int /*<<< orphan*/  saved_serving_prio; int /*<<< orphan*/  saved_workload; TYPE_1__ service_tree_idle; } ;
struct cfq_data {int /*<<< orphan*/  serving_prio; int /*<<< orphan*/  serving_type; scalar_t__ workload_expires; struct cfq_rb_root grp_service_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_rb_root*,struct cfq_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_rb_root*,struct cfq_group*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_data*,struct cfq_group*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cfq_queue*,char*,unsigned int,unsigned int,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned int,struct cfq_group*) ; 
 int FUNC10 (struct cfq_data*,struct cfq_group*) ; 
 scalar_t__ FUNC11 (struct cfq_data*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct cfq_data *cfqd, struct cfq_group *cfqg,
				struct cfq_queue *cfqq)
{
	struct cfq_rb_root *st = &cfqd->grp_service_tree;
	unsigned int used_sl, charge;
	int nr_sync = cfqg->nr_cfqq - FUNC10(cfqd, cfqg)
			- cfqg->service_tree_idle.count;

	FUNC0(nr_sync < 0);
	used_sl = charge = FUNC3(cfqq);

	if (FUNC11(cfqd))
		charge = cfqq->slice_dispatch;
	else if (!FUNC4(cfqq) && !nr_sync)
		charge = cfqq->allocated_slice;

	/* Can't update vdisktime while group is on service tree */
	FUNC6(st, cfqg);
	cfqg->vdisktime += FUNC9(charge, cfqg);
	/* If a new weight was requested, update now, off tree */
	FUNC5(st, cfqg);

	/* This group is being expired. Save the context */
	if (FUNC12(cfqd->workload_expires, jiffies)) {
		cfqg->saved_workload_slice = cfqd->workload_expires
						- jiffies;
		cfqg->saved_workload = cfqd->serving_type;
		cfqg->saved_serving_prio = cfqd->serving_prio;
	} else
		cfqg->saved_workload_slice = 0;

	FUNC7(cfqd, cfqg, "served: vt=%llu min_vt=%llu", cfqg->vdisktime,
					st->min_vdisktime);
	FUNC8(cfqq->cfqd, cfqq, "sl_used=%u disp=%u charge=%u iops=%u"
			" sect=%u", used_sl, cfqq->slice_dispatch, charge,
			FUNC11(cfqd), cfqq->nr_sectors);
	FUNC2(&cfqg->blkg, used_sl);
	FUNC1(&cfqg->blkg);
}