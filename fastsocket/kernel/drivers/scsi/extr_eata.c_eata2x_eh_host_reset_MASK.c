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
struct scsi_cmnd {int result; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; TYPE_1__* device; } ;
struct hostdata {int in_reset; int** target_redo; scalar_t__* cp_stat; int /*<<< orphan*/  board_name; TYPE_2__* cp; scalar_t__** target_to; scalar_t__ retries; } ;
struct Scsi_Host {unsigned int max_channel; unsigned int max_id; unsigned int can_queue; int /*<<< orphan*/  host_lock; int /*<<< orphan*/  io_port; scalar_t__ hostdata; } ;
struct TYPE_4__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 scalar_t__ ABORTING ; 
 int DID_RESET ; 
 int FAILED ; 
 scalar_t__ FREE ; 
 int HZ ; 
 scalar_t__ IN_RESET ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ LOCKED ; 
 int /*<<< orphan*/  MAXLOOP ; 
 scalar_t__ READY ; 
 int /*<<< orphan*/  RESET_PIO ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int do_trace ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,struct hostdata*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *SCarg)
{
	unsigned int i, time, k, c, limit = 0;
	int arg_done = 0;
	struct scsi_cmnd *SCpnt;
	struct Scsi_Host *shost = SCarg->device->host;
	struct hostdata *ha = (struct hostdata *)shost->hostdata;

	FUNC3(KERN_INFO, SCarg,
		"reset, enter, pid %ld.\n", SCarg->serial_number);

	FUNC4(shost->host_lock);

	if (SCarg->host_scribble == NULL)
		FUNC2("%s: reset, pid %ld inactive.\n", ha->board_name, SCarg->serial_number);

	if (ha->in_reset) {
		FUNC2("%s: reset, exit, already in reset.\n", ha->board_name);
		FUNC5(shost->host_lock);
		return FAILED;
	}

	if (FUNC9(shost->io_port, MAXLOOP)) {
		FUNC2("%s: reset, exit, timeout error.\n", ha->board_name);
		FUNC5(shost->host_lock);
		return FAILED;
	}

	ha->retries = 0;

	for (c = 0; c <= shost->max_channel; c++)
		for (k = 0; k < shost->max_id; k++) {
			ha->target_redo[k][c] = 1;
			ha->target_to[k][c] = 0;
		}

	for (i = 0; i < shost->can_queue; i++) {

		if (ha->cp_stat[i] == FREE)
			continue;

		if (ha->cp_stat[i] == LOCKED) {
			ha->cp_stat[i] = FREE;
			FUNC2("%s: reset, locked mbox %d forced free.\n",
			       ha->board_name, i);
			continue;
		}

		if (!(SCpnt = ha->cp[i].SCpnt))
			FUNC1("%s: reset, mbox %d, SCpnt == NULL.\n", ha->board_name, i);

		if (ha->cp_stat[i] == READY || ha->cp_stat[i] == ABORTING) {
			ha->cp_stat[i] = ABORTING;
			FUNC2("%s: reset, mbox %d aborting, pid %ld.\n",
			       ha->board_name, i, SCpnt->serial_number);
		}

		else {
			ha->cp_stat[i] = IN_RESET;
			FUNC2("%s: reset, mbox %d in reset, pid %ld.\n",
			       ha->board_name, i, SCpnt->serial_number);
		}

		if (SCpnt->host_scribble == NULL)
			FUNC1("%s: reset, mbox %d, garbled SCpnt.\n", ha->board_name, i);

		if (*(unsigned int *)SCpnt->host_scribble != i)
			FUNC1("%s: reset, mbox %d, index mismatch.\n", ha->board_name, i);

		if (SCpnt->scsi_done == NULL)
			FUNC1("%s: reset, mbox %d, SCpnt->scsi_done == NULL.\n",
			      ha->board_name, i);

		if (SCpnt == SCarg)
			arg_done = 1;
	}

	if (FUNC0(shost->io_port, 0, RESET_PIO)) {
		FUNC2("%s: reset, cannot reset, timeout error.\n", ha->board_name);
		FUNC5(shost->host_lock);
		return FAILED;
	}

	FUNC2("%s: reset, board reset done, enabling interrupts.\n", ha->board_name);

#if defined(DEBUG_RESET)
	do_trace = 1;
#endif

	ha->in_reset = 1;

	FUNC5(shost->host_lock);

	/* FIXME: use a sleep instead */
	time = jiffies;
	while ((jiffies - time) < (10 * HZ) && limit++ < 200000)
		FUNC7(100L);

	FUNC4(shost->host_lock);

	FUNC2("%s: reset, interrupts disabled, loops %d.\n", ha->board_name, limit);

	for (i = 0; i < shost->can_queue; i++) {

		if (ha->cp_stat[i] == IN_RESET) {
			SCpnt = ha->cp[i].SCpnt;
			FUNC8(i, ha);
			SCpnt->result = DID_RESET << 16;
			SCpnt->host_scribble = NULL;

			/* This mailbox is still waiting for its interrupt */
			ha->cp_stat[i] = LOCKED;

			FUNC2
			    ("%s, reset, mbox %d locked, DID_RESET, pid %ld done.\n",
			     ha->board_name, i, SCpnt->serial_number);
		}

		else if (ha->cp_stat[i] == ABORTING) {
			SCpnt = ha->cp[i].SCpnt;
			FUNC8(i, ha);
			SCpnt->result = DID_RESET << 16;
			SCpnt->host_scribble = NULL;

			/* This mailbox was never queued to the adapter */
			ha->cp_stat[i] = FREE;

			FUNC2
			    ("%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\n",
			     ha->board_name, i, SCpnt->serial_number);
		}

		else
			/* Any other mailbox has already been set free by interrupt */
			continue;

		SCpnt->scsi_done(SCpnt);
	}

	ha->in_reset = 0;
	do_trace = 0;

	if (arg_done)
		FUNC2("%s: reset, exit, pid %ld done.\n", ha->board_name, SCarg->serial_number);
	else
		FUNC2("%s: reset, exit.\n", ha->board_name);

	FUNC5(shost->host_lock);
	return SUCCESS;
}