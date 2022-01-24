#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  phase; } ;
struct TYPE_10__ {int result; TYPE_1__ SCp; } ;
struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_8__ {struct Scsi_Host* host; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int DID_ABORT ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  aborted ; 
 TYPE_6__* current_SC ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  in_command ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(Scsi_Cmnd * SCpnt)
{
	struct Scsi_Host *shpnt = SCpnt->device->host;

	unsigned long flags;
#if EVERY_ACCESS || ERRORS_ONLY || DEBUG_ABORT
	printk("fd_mcs: abort ");
#endif

	FUNC4(shpnt->host_lock, flags);
	if (!in_command) {
#if EVERY_ACCESS || ERRORS_ONLY
		printk(" (not in command)\n");
#endif
		FUNC5(shpnt->host_lock, flags);
		return FAILED;
	} else
		FUNC3("\n");

#if DEBUG_ABORT
	fd_mcs_print_info(SCpnt);
#endif

	FUNC0(shpnt);

	current_SC->SCp.phase |= aborted;

	current_SC->result = DID_ABORT << 16;

	/* Aborts are not done well. . . */
	FUNC2(shpnt, DID_ABORT << 16);

	FUNC5(shpnt->host_lock, flags);
	return SUCCESS;
}