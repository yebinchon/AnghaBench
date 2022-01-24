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
struct request_queue {struct dasd_block* queuedata; } ;
struct dasd_block {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct request_queue *queue)
{
	struct dasd_block *block;

	block = queue->queuedata;
	FUNC2(&block->queue_lock);
	/* Get new request from the block device request queue */
	FUNC1(block);
	/* Now check if the head of the ccw queue needs to be started. */
	FUNC0(block);
	FUNC3(&block->queue_lock);
}