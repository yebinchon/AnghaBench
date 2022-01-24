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
struct request_list {int /*<<< orphan*/ * wait; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  node; struct request_list rq; } ;
struct request {int dummy; } ;
struct io_context {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 struct io_context* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct request* FUNC5 (struct request_queue*,int,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct io_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct request_queue*,struct bio*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct request *FUNC14(struct request_queue *q, int rw_flags,
					struct bio *bio)
{
	const bool is_sync = FUNC9(rw_flags) != 0;
	struct request *rq;

	rq = FUNC5(q, rw_flags, bio, GFP_NOIO);
	while (!rq) {
		FUNC0(wait);
		struct io_context *ioc;
		struct request_list *rl = &q->rq;

		if (FUNC13(FUNC2(q)))
			return NULL;

		FUNC8(&rl->wait[is_sync], &wait,
				TASK_UNINTERRUPTIBLE);

		FUNC12(q, bio, rw_flags & 1);

		FUNC1(q);
		FUNC11(q->queue_lock);
		FUNC6();

		/*
		 * After sleeping, we become a "batching" process and
		 * will be able to allocate at least one request, and
		 * up to a big batch of them for a small period time.
		 * See ioc_batching, ioc_set_batching
		 */
		ioc = FUNC3(GFP_NOIO, q->node);
		FUNC7(q, ioc);

		FUNC10(q->queue_lock);
		FUNC4(&rl->wait[is_sync], &wait);

		rq = FUNC5(q, rw_flags, bio, GFP_NOIO);
	};

	return rq;
}