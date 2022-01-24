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
struct request_queue {int /*<<< orphan*/  queue_lock; struct mapped_device* queuedata; } ;
struct request {int cmd_flags; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ (* busy ) (struct dm_target*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EIO ; 
 int REQ_FLUSH ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 struct dm_table* FUNC7 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC9 (struct mapped_device*,struct request*) ; 
 struct dm_target* FUNC10 (struct dm_table*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC13 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (struct dm_target*,struct request*,struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct dm_target*) ; 

__attribute__((used)) static void FUNC19(struct request_queue *q)
{
	struct mapped_device *md = q->queuedata;
	struct dm_table *map = FUNC7(md);
	struct dm_target *ti;
	struct request *rq, *clone;
	sector_t pos;

	/*
	 * For suspend, check blk_queue_stopped() and increment
	 * ->pending within a single queue_lock not to increment the
	 * number of in-flight I/Os after the queue is stopped in
	 * dm_suspend().
	 */
	while (!FUNC4(q) && !FUNC5(q)) {
		rq = FUNC2(q);
		if (!rq)
			goto plug_and_out;

		/* always use block 0 to find the target for flushes for now */
		pos = 0;
		if (!(rq->cmd_flags & REQ_FLUSH))
			pos = FUNC6(rq);

		ti = FUNC10(map, pos);
		if (!FUNC12(ti)) {
			/*
			 * Must perform setup, that dm_done() requires,
			 * before calling dm_kill_unmapped_request
			 */
			FUNC1("request attempted access beyond the end of device");
			clone = FUNC9(md, rq);
			FUNC8(clone, -EIO);
			continue;
		}

		if (ti->type->busy && ti->type->busy(ti))
			goto plug_and_out;

		clone = FUNC9(md, rq);

		FUNC17(q->queue_lock);
		if (FUNC15(ti, clone, md))
			goto requeued;

		FUNC0(!FUNC14());
		FUNC16(q->queue_lock);
	}

	goto out;

requeued:
	FUNC0(!FUNC14());
	FUNC16(q->queue_lock);

plug_and_out:
	if (!FUNC13(q))
		/* Some requests still remain, retry later */
		FUNC3(q);

out:
	FUNC11(map);
}