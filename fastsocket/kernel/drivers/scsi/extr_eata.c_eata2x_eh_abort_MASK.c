#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  serial_number; int /*<<< orphan*/ * host_scribble; TYPE_1__* device; } ;
struct hostdata {scalar_t__* cp_stat; int /*<<< orphan*/  board_name; TYPE_2__* cp; } ;
struct Scsi_Host {unsigned int can_queue; scalar_t__ io_port; scalar_t__ hostdata; } ;
struct TYPE_4__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 scalar_t__ ABORTING ; 
 int DID_ABORT ; 
 int FAILED ; 
 scalar_t__ FREE ; 
 scalar_t__ IN_RESET ; 
 scalar_t__ IN_USE ; 
 int IRQ_ASSERTED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ LOCKED ; 
 int /*<<< orphan*/  MAXLOOP ; 
 scalar_t__ READY ; 
 scalar_t__ REG_AUX_STATUS ; 
 int SUCCESS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct hostdata*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SCarg)
{
	struct Scsi_Host *shost = SCarg->device->host;
	struct hostdata *ha = (struct hostdata *)shost->hostdata;
	unsigned int i;

	if (SCarg->host_scribble == NULL) {
		FUNC3(KERN_INFO, SCarg,
			"abort, pid %ld inactive.\n", SCarg->serial_number);
		return SUCCESS;
	}

	i = *(unsigned int *)SCarg->host_scribble;
	FUNC3(KERN_WARNING, SCarg,
		"abort, mbox %d, pid %ld.\n", i, SCarg->serial_number);

	if (i >= shost->can_queue)
		FUNC1("%s: abort, invalid SCarg->host_scribble.\n", ha->board_name);

	if (FUNC6(shost->io_port, MAXLOOP)) {
		FUNC2("%s: abort, timeout error.\n", ha->board_name);
		return FAILED;
	}

	if (ha->cp_stat[i] == FREE) {
		FUNC2("%s: abort, mbox %d is free.\n", ha->board_name, i);
		return SUCCESS;
	}

	if (ha->cp_stat[i] == IN_USE) {
		FUNC2("%s: abort, mbox %d is in use.\n", ha->board_name, i);

		if (SCarg != ha->cp[i].SCpnt)
			FUNC1("%s: abort, mbox %d, SCarg %p, cp SCpnt %p.\n",
			      ha->board_name, i, SCarg, ha->cp[i].SCpnt);

		if (FUNC0(shost->io_port + REG_AUX_STATUS) & IRQ_ASSERTED)
			FUNC2("%s: abort, mbox %d, interrupt pending.\n",
			       ha->board_name, i);

		return FAILED;
	}

	if (ha->cp_stat[i] == IN_RESET) {
		FUNC2("%s: abort, mbox %d is in reset.\n", ha->board_name, i);
		return FAILED;
	}

	if (ha->cp_stat[i] == LOCKED) {
		FUNC2("%s: abort, mbox %d is locked.\n", ha->board_name, i);
		return SUCCESS;
	}

	if (ha->cp_stat[i] == READY || ha->cp_stat[i] == ABORTING) {
		FUNC5(i, ha);
		SCarg->result = DID_ABORT << 16;
		SCarg->host_scribble = NULL;
		ha->cp_stat[i] = FREE;
		FUNC2("%s, abort, mbox %d ready, DID_ABORT, pid %ld done.\n",
		       ha->board_name, i, SCarg->serial_number);
		SCarg->scsi_done(SCarg);
		return SUCCESS;
	}

	FUNC1("%s: abort, mbox %d, invalid cp_stat.\n", ha->board_name, i);
}