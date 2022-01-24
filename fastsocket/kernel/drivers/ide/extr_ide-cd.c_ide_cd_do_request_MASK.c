#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct request {int cmd_type; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * cmd; } ;
struct ide_cmd {struct request* rq; int /*<<< orphan*/  tf_flags; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_9__ {int debug_mask; } ;
typedef  TYPE_1__ ide_drive_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ATAPI_WAIT_PC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EIO ; 
 int IDE_DBG_RQ ; 
 int /*<<< orphan*/  IDE_TFLAG_WRITE ; 
#define  REQ_TYPE_ATA_PC 132 
#define  REQ_TYPE_BLOCK_PC 131 
#define  REQ_TYPE_FS 130 
#define  REQ_TYPE_SENSE 129 
#define  REQ_TYPE_SPECIAL 128 
 int /*<<< orphan*/  FUNC1 (struct request*,char*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct ide_cmd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 int /*<<< orphan*/  FUNC12 (struct ide_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct request*) ; 

__attribute__((used)) static ide_startstop_t FUNC14(ide_drive_t *drive, struct request *rq,
					sector_t block)
{
	struct ide_cmd cmd;
	int uptodate = 0, nsectors;

	FUNC7(IDE_DBG_RQ, "cmd: 0x%x, block: %llu",
				  rq->cmd[0], (unsigned long long)block);

	if (drive->debug_mask & IDE_DBG_RQ)
		FUNC1(rq, "ide_cd_do_request");

	switch (rq->cmd_type) {
	case REQ_TYPE_FS:
		if (FUNC5(drive, rq) == ide_stopped)
			goto out_end;
		break;
	case REQ_TYPE_SENSE:
	case REQ_TYPE_BLOCK_PC:
	case REQ_TYPE_ATA_PC:
		if (!rq->timeout)
			rq->timeout = ATAPI_WAIT_PC;

		FUNC4(drive, rq);
		break;
	case REQ_TYPE_SPECIAL:
		/* right now this can only be a reset... */
		uptodate = 1;
		goto out_end;
	default:
		FUNC0();
	}

	/* prepare sense request for this command */
	FUNC11(drive, rq);

	FUNC12(&cmd, 0, sizeof(cmd));

	if (FUNC13(rq))
		cmd.tf_flags |= IDE_TFLAG_WRITE;

	cmd.rq = rq;

	if (rq->cmd_type == REQ_TYPE_FS || FUNC2(rq)) {
		FUNC8(&cmd, FUNC2(rq));
		FUNC10(drive, &cmd);
	}

	return FUNC9(drive, &cmd);
out_end:
	nsectors = FUNC3(rq);

	if (nsectors == 0)
		nsectors = 1;

	FUNC6(drive, uptodate ? 0 : -EIO, nsectors << 9);

	return ide_stopped;
}