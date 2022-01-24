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
struct throtl_grp {int dummy; } ;
struct throtl_data {struct throtl_grp* root_tg; struct request_queue* queue; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct blkio_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct blkio_cgroup* FUNC6 (int /*<<< orphan*/ ) ; 
 struct throtl_grp* FUNC7 (struct throtl_data*) ; 
 struct throtl_grp* FUNC8 (struct throtl_data*,struct blkio_cgroup*) ; 
 int /*<<< orphan*/  FUNC9 (struct throtl_data*,struct throtl_grp*,struct blkio_cgroup*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct throtl_grp * FUNC11(struct throtl_data *td)
{
	struct throtl_grp *tg = NULL, *__tg = NULL;
	struct blkio_cgroup *blkcg;
	struct request_queue *q = td->queue;

	/* no throttling for dead queue */
	if (FUNC10(FUNC0(q)))
		return NULL;

	FUNC2();
	blkcg = FUNC6(current);
	tg = FUNC8(td, blkcg);
	if (tg) {
		FUNC3();
		return tg;
	}

	/*
	 * Need to allocate a group. Allocation of group also needs allocation
	 * of per cpu stats which in-turn takes a mutex() and can block. Hence
	 * we need to drop rcu lock and queue_lock before we call alloc.
	 */
	FUNC3();
	FUNC5(q->queue_lock);

	tg = FUNC7(td);

	/* Group allocated and queue is still alive. take the lock */
	FUNC4(q->queue_lock);

	/* Make sure @q is still alive */
	if (FUNC10(FUNC0(q))) {
		FUNC1(tg);
		return NULL;
	}

	/*
	 * Initialize the new group. After sleeping, read the blkcg again.
	 */
	FUNC2();
	blkcg = FUNC6(current);

	/*
	 * If some other thread already allocated the group while we were
	 * not holding queue lock, free up the group
	 */
	__tg = FUNC8(td, blkcg);

	if (__tg) {
		FUNC1(tg);
		FUNC3();
		return __tg;
	}

	/* Group allocation failed. Account the IO to root group */
	if (!tg) {
		tg = td->root_tg;
		return tg;
	}

	FUNC9(td, tg, blkcg);
	FUNC3();
	return tg;
}