#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/  cmd; } ;
struct ide_atapi_pc {int /*<<< orphan*/  c; } ;
struct TYPE_8__ {scalar_t__ media; TYPE_1__* hwif; int /*<<< orphan*/  atapi_flags; struct ide_atapi_pc request_sense_pc; struct request sense_rq; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_7__ {struct request* rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  IDE_AFLAG_IGNORE_DSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_atapi_pc*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ ide_tape ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(ide_drive_t *drive)
{
	struct request *failed_rq = drive->hwif->rq;
	struct request *sense_rq = &drive->sense_rq;
	struct ide_atapi_pc *pc = &drive->request_sense_pc;

	(void)FUNC6(drive);

	/* init pc from sense_rq */
	FUNC4(pc);
	FUNC7(pc->c, sense_rq->cmd, 12);

	if (drive->media == ide_tape)
		drive->atapi_flags |= IDE_AFLAG_IGNORE_DSC;

	/*
	 * Push back the failed request and put request sense on top
	 * of it.  The failed command will be retried after sense data
	 * is acquired.
	 */
	FUNC0(failed_rq->q, failed_rq);
	drive->hwif->rq = NULL;
	if (FUNC5(drive, pc)) {
		FUNC2(failed_rq);
		FUNC3(drive, -EIO, FUNC1(failed_rq));
	}
}