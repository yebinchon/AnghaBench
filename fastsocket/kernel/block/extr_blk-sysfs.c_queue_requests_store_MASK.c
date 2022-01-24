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
struct request_list {int* count; int /*<<< orphan*/ * wait; } ;
struct request_queue {unsigned long nr_requests; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  request_fn; struct request_list rq; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long BLKDEV_MIN_RQ ; 
 size_t BLK_RW_ASYNC ; 
 size_t BLK_RW_SYNC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,size_t) ; 
 int FUNC5 (struct request_queue*) ; 
 int FUNC6 (struct request_queue*) ; 
 int FUNC7 (unsigned long*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC11(struct request_queue *q, const char *page, size_t count)
{
	struct request_list *rl = &q->rq;
	unsigned long nr;
	int ret;

	if (!q->request_fn)
		return -EINVAL;

	ret = FUNC7(&nr, page, count);
	if (nr < BLKDEV_MIN_RQ)
		nr = BLKDEV_MIN_RQ;

	FUNC8(q->queue_lock);
	q->nr_requests = nr;
	FUNC2(q);

	if (rl->count[BLK_RW_SYNC] >= FUNC6(q))
		FUNC3(q, BLK_RW_SYNC);
	else if (rl->count[BLK_RW_SYNC] < FUNC5(q))
		FUNC0(q, BLK_RW_SYNC);

	if (rl->count[BLK_RW_ASYNC] >= FUNC6(q))
		FUNC3(q, BLK_RW_ASYNC);
	else if (rl->count[BLK_RW_ASYNC] < FUNC5(q))
		FUNC0(q, BLK_RW_ASYNC);

	if (rl->count[BLK_RW_SYNC] >= q->nr_requests) {
		FUNC4(q, BLK_RW_SYNC);
	} else if (rl->count[BLK_RW_SYNC]+1 <= q->nr_requests) {
		FUNC1(q, BLK_RW_SYNC);
		FUNC10(&rl->wait[BLK_RW_SYNC]);
	}

	if (rl->count[BLK_RW_ASYNC] >= q->nr_requests) {
		FUNC4(q, BLK_RW_ASYNC);
	} else if (rl->count[BLK_RW_ASYNC]+1 <= q->nr_requests) {
		FUNC1(q, BLK_RW_ASYNC);
		FUNC10(&rl->wait[BLK_RW_ASYNC]);
	}
	FUNC9(q->queue_lock);
	return ret;
}