#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  request; TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ) ;} ;
struct sas_task_slow {TYPE_2__ timer; } ;
struct sas_task {int /*<<< orphan*/  dev; struct sas_task_slow* slow_task; struct scsi_cmnd* uldd_task; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct TYPE_3__ {struct request_queue* request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct sas_task *task)
{
	struct scsi_cmnd *sc = task->uldd_task;

	/* Escape for libsas internal commands */
	if (!sc) {
		struct sas_task_slow *slow = task->slow_task;

		if (!slow)
			return;
		if (!FUNC1(&slow->timer))
			return;
		slow->timer.function(slow->timer.data);
		return;
	}

	if (FUNC2(task->dev)) {
		FUNC3(task);
	} else {
		struct request_queue *q = sc->device->request_queue;
		unsigned long flags;

		FUNC4(q->queue_lock, flags);
		FUNC0(sc->request);
		FUNC5(q->queue_lock, flags);
	}
}