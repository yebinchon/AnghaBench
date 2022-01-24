#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct data_queue {int /*<<< orphan*/  status_lock; TYPE_3__* rt2x00dev; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_2__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start_queue ) (struct data_queue*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  QUEUE_PAUSED ; 
 int /*<<< orphan*/  QUEUE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct data_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct data_queue*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct data_queue *queue)
{
	FUNC0(&queue->status_lock);

	if (!FUNC6(DEVICE_STATE_PRESENT, &queue->rt2x00dev->flags) ||
	    FUNC5(QUEUE_STARTED, &queue->flags)) {
		FUNC1(&queue->status_lock);
		return;
	}

	FUNC3(QUEUE_PAUSED, &queue->flags);

	queue->rt2x00dev->ops->lib->start_queue(queue);

	FUNC2(queue);

	FUNC1(&queue->status_lock);
}