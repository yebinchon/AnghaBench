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
struct request_queue {int /*<<< orphan*/  tag_busy_list; struct blk_queue_tag* queue_tags; } ;
struct blk_queue_tag {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QUEUE_FLAG_QUEUED ; 
 struct blk_queue_tag* FUNC2 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_queue_tag*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct request_queue*) ; 

int FUNC8(struct request_queue *q, int depth,
			struct blk_queue_tag *tags)
{
	int rc;

	FUNC0(tags && q->queue_tags && tags != q->queue_tags);

	if (!tags && !q->queue_tags) {
		tags = FUNC2(q, depth);

		if (!tags)
			goto fail;
	} else if (q->queue_tags) {
		rc = FUNC4(q, depth);
		if (rc)
			return rc;
		FUNC6(QUEUE_FLAG_QUEUED, q);
		return 0;
	} else
		FUNC3(&tags->refcnt);

	/*
	 * assign it, all done
	 */
	q->queue_tags = tags;
	FUNC7(QUEUE_FLAG_QUEUED, q);
	FUNC1(&q->tag_busy_list);
	return 0;
fail:
	FUNC5(tags);
	return -ENOMEM;
}