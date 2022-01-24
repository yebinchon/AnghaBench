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
struct request_queue {scalar_t__ unplug_delay; int /*<<< orphan*/  unplug_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_PLUGGED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 

void FUNC6(struct request_queue *q)
{
	FUNC0(!FUNC2());

	/*
	 * don't plug a stopped queue, it must be paired with blk_start_queue()
	 * which will restart the queueing
	 */
	if (FUNC1(q))
		return;

	if (!FUNC4(QUEUE_FLAG_PLUGGED, q)) {
		FUNC3(&q->unplug_timer, jiffies + q->unplug_delay);
		FUNC5(q);
	}
}