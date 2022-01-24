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
struct io_context {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {struct cfq_queue** cfqq; int /*<<< orphan*/  ioc; struct cfq_data* key; } ;
struct cfq_data {TYPE_1__* queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 size_t BLK_RW_ASYNC ; 
 size_t BLK_RW_SYNC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct cfq_queue* FUNC0 (struct cfq_data*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct io_context *ioc, struct cfq_io_context *cic)
{
	struct cfq_data *cfqd = cic->key;
	struct cfq_queue *cfqq;
	unsigned long flags;

	if (FUNC5(!cfqd))
		return;

	FUNC3(cfqd->queue->queue_lock, flags);

	cfqq = cic->cfqq[BLK_RW_ASYNC];
	if (cfqq) {
		struct cfq_queue *new_cfqq;
		new_cfqq = FUNC0(cfqd, BLK_RW_ASYNC, cic->ioc,
						GFP_ATOMIC);
		if (new_cfqq) {
			cic->cfqq[BLK_RW_ASYNC] = new_cfqq;
			FUNC2(cfqq);
		}
	}

	cfqq = cic->cfqq[BLK_RW_SYNC];
	if (cfqq)
		FUNC1(cfqq);

	FUNC4(cfqd->queue->queue_lock, flags);
}