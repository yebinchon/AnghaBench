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
struct io_context {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_group {int dummy; } ;
struct cfq_data {struct cfq_queue oom_cfqq; TYPE_1__* queue; } ;
typedef  int gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int __GFP_WAIT ; 
 int __GFP_ZERO ; 
 struct cfq_io_context* FUNC0 (struct cfq_data*,struct io_context*) ; 
 struct cfq_group* FUNC1 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*,struct io_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*,struct cfq_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  cfq_pool ; 
 struct cfq_queue* FUNC6 (struct cfq_io_context*,int) ; 
 TYPE_2__* current ; 
 struct cfq_queue* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfq_queue *
FUNC11(struct cfq_data *cfqd, bool is_sync,
		     struct io_context *ioc, gfp_t gfp_mask)
{
	struct cfq_queue *cfqq, *new_cfqq = NULL;
	struct cfq_io_context *cic;
	struct cfq_group *cfqg;

retry:
	cfqg = FUNC1(cfqd);
	cic = FUNC0(cfqd, ioc);
	/* cic always exists here */
	cfqq = FUNC6(cic, is_sync);

	/*
	 * Always try a new alloc if we fell back to the OOM cfqq
	 * originally, since it should just be a temporary situation.
	 */
	if (!cfqq || cfqq == &cfqd->oom_cfqq) {
		cfqq = NULL;
		if (new_cfqq) {
			cfqq = new_cfqq;
			new_cfqq = NULL;
		} else if (gfp_mask & __GFP_WAIT) {
			FUNC10(cfqd->queue->queue_lock);
			new_cfqq = FUNC7(cfq_pool,
					gfp_mask | __GFP_ZERO,
					cfqd->queue->node);
			FUNC9(cfqd->queue->queue_lock);
			if (new_cfqq)
				goto retry;
		} else {
			cfqq = FUNC7(cfq_pool,
					gfp_mask | __GFP_ZERO,
					cfqd->queue->node);
		}

		if (cfqq) {
			FUNC2(cfqd, cfqq, current->pid, is_sync);
			FUNC3(cfqq, ioc);
			FUNC4(cfqq, cfqg);
			FUNC5(cfqd, cfqq, "alloced");
		} else
			cfqq = &cfqd->oom_cfqq;
	}

	if (new_cfqq)
		FUNC8(cfq_pool, new_cfqq);

	return cfqq;
}