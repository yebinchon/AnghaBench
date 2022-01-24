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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  elevator; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_ELVSWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct request_queue *q)
{
	if (!q->elevator)
		return;

	FUNC2(q->queue_lock);
	FUNC1(QUEUE_FLAG_ELVSWITCH, q);
	FUNC3(q->queue_lock);

	FUNC0(q, false);
}