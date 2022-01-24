#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int cmd_len; unsigned long* special; void* cmd_type; int /*<<< orphan*/ * cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; unsigned long sleep; struct request_queue* queue; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  ELEVATOR_INSERT_FRONT ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int IDE_DFLAG_PARKED ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_PARK_HEADS ; 
 void* REQ_TYPE_SPECIAL ; 
 int /*<<< orphan*/  REQ_UNPARK_HEADS ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ide_park_wq ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(ide_drive_t *drive, unsigned long timeout)
{
	ide_hwif_t *hwif = drive->hwif;
	struct request_queue *q = drive->queue;
	struct request *rq;
	int rc;

	timeout += jiffies;
	FUNC6(&hwif->lock);
	if (drive->dev_flags & IDE_DFLAG_PARKED) {
		int reset_timer = FUNC8(timeout, drive->sleep);
		int start_queue = 0;

		drive->sleep = timeout;
		FUNC10(&ide_park_wq);
		if (reset_timer && FUNC4(&hwif->timer))
			start_queue = 1;
		FUNC7(&hwif->lock);

		if (start_queue)
			FUNC3(q);
		return;
	}
	FUNC7(&hwif->lock);

	rq = FUNC1(q, READ, __GFP_WAIT);
	rq->cmd[0] = REQ_PARK_HEADS;
	rq->cmd_len = 1;
	rq->cmd_type = REQ_TYPE_SPECIAL;
	rq->special = &timeout;
	rc = FUNC0(q, NULL, rq, 1);
	FUNC2(rq);
	if (rc)
		goto out;

	/*
	 * Make sure that *some* command is sent to the drive after the
	 * timeout has expired, so power management will be reenabled.
	 */
	rq = FUNC1(q, READ, GFP_NOWAIT);
	if (FUNC9(!rq))
		goto out;

	rq->cmd[0] = REQ_UNPARK_HEADS;
	rq->cmd_len = 1;
	rq->cmd_type = REQ_TYPE_SPECIAL;
	FUNC5(q, rq, ELEVATOR_INSERT_FRONT, 1);

out:
	return;
}