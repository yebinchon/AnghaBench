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
struct io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  ioc_data; } ;
struct cfq_io_context {unsigned long dead_key; int /*<<< orphan*/ ** cfqq; int /*<<< orphan*/ * key; int /*<<< orphan*/  queue_list; struct io_context* ioc; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 size_t BLK_RW_ASYNC ; 
 size_t BLK_RW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct cfq_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cfq_io_context* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cfq_data *cfqd,
					 struct cfq_io_context *cic)
{
	struct io_context *ioc = cic->ioc;

	FUNC1(&cic->queue_list);

	/*
	 * Make sure key == NULL is seen for dead queues
	 */
	FUNC4();
	cic->dead_key = (unsigned long) cic->key;
	cic->key = NULL;

	if (FUNC3(ioc->ioc_data) == cic) {
		FUNC5(&ioc->lock);
		FUNC2(ioc->ioc_data, NULL);
		FUNC6(&ioc->lock);
	}

	if (cic->cfqq[BLK_RW_ASYNC]) {
		FUNC0(cfqd, cic->cfqq[BLK_RW_ASYNC]);
		cic->cfqq[BLK_RW_ASYNC] = NULL;
	}

	if (cic->cfqq[BLK_RW_SYNC]) {
		FUNC0(cfqd, cic->cfqq[BLK_RW_SYNC]);
		cic->cfqq[BLK_RW_SYNC] = NULL;
	}
}