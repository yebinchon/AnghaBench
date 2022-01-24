#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/ * queue_lock; TYPE_3__* queuedata; } ;
struct request {int cmd_flags; } ;
struct ide_host {int host_flags; TYPE_2__* cur_port; } ;
typedef  scalar_t__ ide_startstop_t ;
struct TYPE_10__ {int /*<<< orphan*/  lock; struct request* rq; TYPE_3__* cur_dev; struct ide_host* host; TYPE_1__* tp_ops; } ;
typedef  TYPE_2__ ide_hwif_t ;
struct TYPE_11__ {int dev_flags; int /*<<< orphan*/  queue; int /*<<< orphan*/  sleep; TYPE_2__* hwif; } ;
typedef  TYPE_3__ ide_drive_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* write_devctl ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int ATA_DEVCTL_OBS ; 
 int ATA_NIEN ; 
 int IDE_DFLAG_BLOCKED ; 
 int IDE_DFLAG_NIEN_QUIRK ; 
 int IDE_DFLAG_PARKED ; 
 int IDE_DFLAG_SLEEPING ; 
 int IDE_HFLAG_SERIALIZE ; 
 int REQ_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 scalar_t__ FUNC8 (struct ide_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ ide_stopped ; 
 int /*<<< orphan*/  FUNC10 (struct ide_host*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_3__*,struct request*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC18(struct request_queue *q)
{
	ide_drive_t	*drive = q->queuedata;
	ide_hwif_t	*hwif = drive->hwif;
	struct ide_host *host = hwif->host;
	struct request	*rq = NULL;
	ide_startstop_t	startstop;

	/*
	 * drive is doing pre-flush, ordered write, post-flush sequence. even
	 * though that is 3 requests, it must be seen as a single transaction.
	 * we must not preempt this drive until that is complete
	 */
	if (FUNC4(q))
		/*
		 * small race where queue could get replugged during
		 * the 3-request flush cycle, just yank the plug since
		 * we want it to finish asap
		 */
		FUNC5(q);

	FUNC14(q->queue_lock);

	/* HLD do_request() callback might sleep, make sure it's okay */
	FUNC12();

	if (FUNC8(host, hwif))
		goto plug_device_2;

	FUNC13(&hwif->lock);

	if (!FUNC9(hwif)) {
		ide_hwif_t *prev_port;

		FUNC0(hwif->rq);
repeat:
		prev_port = hwif->host->cur_port;
		if (drive->dev_flags & IDE_DFLAG_SLEEPING &&
		    FUNC17(drive->sleep, jiffies)) {
			FUNC11(hwif);
			goto plug_device;
		}

		if ((hwif->host->host_flags & IDE_HFLAG_SERIALIZE) &&
		    hwif != prev_port) {
			ide_drive_t *cur_dev =
				prev_port ? prev_port->cur_dev : NULL;

			/*
			 * set nIEN for previous port, drives in the
			 * quirk list may not like intr setups/cleanups
			 */
			if (cur_dev &&
			    (cur_dev->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
				prev_port->tp_ops->write_devctl(prev_port,
								ATA_NIEN |
								ATA_DEVCTL_OBS);

			hwif->host->cur_port = hwif;
		}
		hwif->cur_dev = drive;
		drive->dev_flags &= ~(IDE_DFLAG_SLEEPING | IDE_DFLAG_PARKED);

		FUNC14(&hwif->lock);
		FUNC13(q->queue_lock);
		/*
		 * we know that the queue isn't empty, but this can happen
		 * if the q->prep_rq_fn() decides to kill a request
		 */
		if (!rq)
			rq = FUNC1(drive->queue);

		FUNC14(q->queue_lock);
		FUNC13(&hwif->lock);

		if (!rq) {
			FUNC11(hwif);
			goto out;
		}

		/*
		 * Sanity: don't accept a request that isn't a PM request
		 * if we are currently power managed. This is very important as
		 * blk_stop_queue() doesn't prevent the blk_fetch_request()
		 * above to return us whatever is in the queue. Since we call
		 * ide_do_request() ourselves, we end up taking requests while
		 * the queue is blocked...
		 * 
		 * We let requests forced at head of queue with ide-preempt
		 * though. I hope that doesn't happen too much, hopefully not
		 * unless the subdriver triggers such a thing in its own PM
		 * state machine.
		 */
		if ((drive->dev_flags & IDE_DFLAG_BLOCKED) &&
		    FUNC3(rq) == 0 &&
		    (rq->cmd_flags & REQ_PREEMPT) == 0) {
			/* there should be no pending command at this point */
			FUNC11(hwif);
			goto plug_device;
		}

		hwif->rq = rq;

		FUNC14(&hwif->lock);
		startstop = FUNC15(drive, rq);
		FUNC13(&hwif->lock);

		if (startstop == ide_stopped) {
			rq = hwif->rq;
			hwif->rq = NULL;
			goto repeat;
		}
	} else
		goto plug_device;
out:
	FUNC14(&hwif->lock);
	if (rq == NULL)
		FUNC10(host);
	FUNC13(q->queue_lock);
	return;

plug_device:
	FUNC14(&hwif->lock);
	FUNC10(host);
plug_device_2:
	FUNC13(q->queue_lock);

	if (rq)
		FUNC6(q, rq);
	if (!FUNC7(q))
		FUNC2(q);
}