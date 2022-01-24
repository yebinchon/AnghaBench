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
struct request_queue {struct blk_queue_tag* queue_tags; } ;
struct blk_queue_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct blk_queue_tag*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 

void FUNC2(struct request_queue *q)
{
	struct blk_queue_tag *bqt = q->queue_tags;

	if (!bqt)
		return;

	FUNC0(bqt);

	q->queue_tags = NULL;
	FUNC1(QUEUE_FLAG_QUEUED, q);
}