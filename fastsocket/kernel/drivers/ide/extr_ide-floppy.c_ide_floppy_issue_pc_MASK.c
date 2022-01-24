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
struct ide_disk_obj {int dummy; } ;
struct ide_cmd {int dummy; } ;
struct ide_atapi_pc {scalar_t__* c; scalar_t__ retries; int flags; int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* pc_callback ) (TYPE_2__*,int /*<<< orphan*/ ) ;struct ide_atapi_pc* failed_pc; TYPE_1__* hwif; struct ide_atapi_pc* pc; struct ide_disk_obj* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_7__ {int /*<<< orphan*/  rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ GPCMD_REQUEST_SENSE ; 
 scalar_t__ IDEFLOPPY_MAX_PC_RETRIES ; 
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  IDE_DRV_ERROR_GENERAL ; 
 int PC_FLAG_SUPPRESS_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ide_disk_obj*,struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ide_startstop_t FUNC6(ide_drive_t *drive,
					   struct ide_cmd *cmd,
					   struct ide_atapi_pc *pc)
{
	struct ide_disk_obj *floppy = drive->driver_data;

	if (drive->failed_pc == NULL &&
	    pc->c[0] != GPCMD_REQUEST_SENSE)
		drive->failed_pc = pc;

	/* Set the current packet command */
	drive->pc = pc;

	if (pc->retries > IDEFLOPPY_MAX_PC_RETRIES) {
		unsigned int done = FUNC0(drive->hwif->rq);

		if (!(pc->flags & PC_FLAG_SUPPRESS_ERROR))
			FUNC3(floppy, pc);

		/* Giving up */
		pc->error = IDE_DRV_ERROR_GENERAL;

		drive->failed_pc = NULL;
		drive->pc_callback(drive, 0);
		FUNC1(drive, -EIO, done);
		return ide_stopped;
	}

	FUNC2(IDE_DBG_FUNC, "retry #%d", pc->retries);

	pc->retries++;

	return FUNC4(drive, cmd);
}