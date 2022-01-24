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
struct cfq_queue {scalar_t__ nr_sectors; scalar_t__ slice_dispatch; scalar_t__ slice_end; scalar_t__ allocated_slice; int /*<<< orphan*/  dispatch_start; scalar_t__ slice_start; TYPE_1__* cfqg; } ;
struct cfq_data {struct cfq_queue* active_queue; int /*<<< orphan*/  serving_type; int /*<<< orphan*/  serving_prio; } ;
struct TYPE_2__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_data*,struct cfq_queue*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_queue*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static void FUNC8(struct cfq_data *cfqd,
				   struct cfq_queue *cfqq)
{
	if (cfqq) {
		FUNC6(cfqd, cfqq, "set_active wl_prio:%d wl_type:%d",
				cfqd->serving_prio, cfqd->serving_type);
		FUNC0(&cfqq->cfqg->blkg);
		cfqq->slice_start = 0;
		cfqq->dispatch_start = jiffies;
		cfqq->allocated_slice = 0;
		cfqq->slice_end = 0;
		cfqq->slice_dispatch = 0;
		cfqq->nr_sectors = 0;

		FUNC4(cfqq);
		FUNC3(cfqq);
		FUNC2(cfqq);
		FUNC1(cfqq);
		FUNC7(cfqq);

		FUNC5(cfqd, cfqq);
	}

	cfqd->active_queue = cfqq;
}