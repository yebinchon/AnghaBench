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
struct request {char* special; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cmd_type; } ;
struct ide_atapi_pc {int /*<<< orphan*/  c; } ;
struct gendisk {int dummy; } ;
struct TYPE_3__ {scalar_t__ media; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_IDETAPE_PC1 ; 
 int /*<<< orphan*/  REQ_TYPE_SPECIAL ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct gendisk*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ ide_tape ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(ide_drive_t *drive, struct gendisk *disk,
		      struct ide_atapi_pc *pc, void *buf, unsigned int bufflen)
{
	struct request *rq;
	int error;

	rq = FUNC1(drive->queue, READ, __GFP_WAIT);
	rq->cmd_type = REQ_TYPE_SPECIAL;
	rq->special = (char *)pc;

	if (buf && bufflen) {
		error = FUNC3(drive->queue, rq, buf, bufflen,
					GFP_NOIO);
		if (error)
			goto put_req;
	}

	FUNC4(rq->cmd, pc->c, 12);
	if (drive->media == ide_tape)
		rq->cmd[13] = REQ_IDETAPE_PC1;
	error = FUNC0(drive->queue, disk, rq, 0);
put_req:
	FUNC2(rq);
	return error;
}