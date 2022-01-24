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
struct request {int cmd_flags; int /*<<< orphan*/  cmd; } ;
struct ide_disk_obj {unsigned long bs_factor; } ;
struct ide_atapi_pc {int /*<<< orphan*/  flags; struct request* rq; int /*<<< orphan*/ * c; } ;
struct TYPE_3__ {struct ide_disk_obj* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPCMD_READ_10 ; 
 int /*<<< orphan*/  GPCMD_WRITE_10 ; 
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  PC_FLAG_DMA_OK ; 
 int /*<<< orphan*/  PC_FLAG_WRITING ; 
 int READ ; 
 int REQ_WRITE ; 
 int FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 int FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(ide_drive_t *drive,
				    struct ide_atapi_pc *pc, struct request *rq,
				    unsigned long sector)
{
	struct ide_disk_obj *floppy = drive->driver_data;
	int block = sector / floppy->bs_factor;
	int blocks = FUNC0(rq) / floppy->bs_factor;
	int cmd = FUNC7(rq);

	FUNC3(IDE_DBG_FUNC, "block: %d, blocks: %d", block, blocks);

	FUNC4(pc);
	pc->c[0] = cmd == READ ? GPCMD_READ_10 : GPCMD_WRITE_10;
	FUNC6(FUNC1(blocks), (unsigned short *)&pc->c[7]);
	FUNC6(FUNC2(block), (unsigned int *) &pc->c[2]);

	FUNC5(rq->cmd, pc->c, 12);

	pc->rq = rq;
	if (rq->cmd_flags & REQ_WRITE)
		pc->flags |= PC_FLAG_WRITING;

	pc->flags |= PC_FLAG_DMA_OK;
}