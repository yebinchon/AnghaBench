#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct request {scalar_t__ cmd_type; int errors; struct ide_cmd* special; } ;
struct ide_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_10__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_9__ {struct request* rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ REQ_TYPE_ATA_TASKFILE ; 
 scalar_t__ REQ_TYPE_FS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct request*,int,int) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct ide_cmd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  ide_stopped ; 

ide_startstop_t FUNC7(ide_drive_t *drive, const char *msg, u8 stat)
{
	struct request *rq;
	u8 err;

	err = FUNC6(drive, msg, stat);

	rq = drive->hwif->rq;
	if (rq == NULL)
		return ide_stopped;

	/* retry only "normal" I/O: */
	if (rq->cmd_type != REQ_TYPE_FS) {
		if (rq->cmd_type == REQ_TYPE_ATA_TASKFILE) {
			struct ide_cmd *cmd = rq->special;

			if (cmd)
				FUNC3(drive, cmd, stat, err);
		} else if (FUNC1(rq)) {
			rq->errors = 1;
			FUNC4(drive, rq);
			return ide_stopped;
		}
		rq->errors = err;
		FUNC5(drive, err ? -EIO : 0, FUNC2(rq));
		return ide_stopped;
	}

	return FUNC0(drive, rq, stat, err);
}