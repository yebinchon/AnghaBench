#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct request {struct ide_cmd* special; int /*<<< orphan*/  cmd_type; } ;
struct ide_cmd {int tf_flags; struct request* rq; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int IDE_TFLAG_WRITE ; 
 int READ ; 
 int /*<<< orphan*/  REQ_TYPE_ATA_TASKFILE ; 
 int SECTOR_SIZE ; 
 int WRITE ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC4(ide_drive_t *drive, struct ide_cmd *cmd, u8 *buf,
		     u16 nsect)
{
	struct request *rq;
	int error;
	int rw = !(cmd->tf_flags & IDE_TFLAG_WRITE) ? READ : WRITE;

	rq = FUNC1(drive->queue, rw, __GFP_WAIT);
	rq->cmd_type = REQ_TYPE_ATA_TASKFILE;

	/*
	 * (ks) We transfer currently only whole sectors.
	 * This is suffient for now.  But, it would be great,
	 * if we would find a solution to transfer any size.
	 * To support special commands like READ LONG.
	 */
	if (nsect) {
		error = FUNC3(drive->queue, rq, buf,
					nsect * SECTOR_SIZE, __GFP_WAIT);
		if (error)
			goto put_req;
	}

	rq->special = cmd;
	cmd->rq = rq;

	error = FUNC0(drive->queue, NULL, rq, 0);

put_req:
	FUNC2(rq);
	return error;
}