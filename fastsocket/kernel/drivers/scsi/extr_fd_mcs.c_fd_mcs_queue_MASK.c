#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct TYPE_16__ {scalar_t__ length; } ;
struct TYPE_14__ {int /*<<< orphan*/  phase; scalar_t__ sent_command; scalar_t__ have_data_in; scalar_t__ Message; scalar_t__ Status; scalar_t__ buffers_residual; TYPE_5__* buffer; scalar_t__ this_residual; int /*<<< orphan*/ * ptr; } ;
struct TYPE_15__ {void (* scsi_done ) (TYPE_3__*) ;TYPE_2__ SCp; scalar_t__ cmnd; int /*<<< orphan*/  target; TYPE_1__* device; } ;
struct TYPE_13__ {struct Scsi_Host* host; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  Interrupt_Cntl_port ; 
 int PARITY_MASK ; 
 int /*<<< orphan*/  SCSI_Cntl_port ; 
 int /*<<< orphan*/  SCSI_Data_NoACK_port ; 
 int /*<<< orphan*/  TMC_Cntl_port ; 
 int adapter_mask ; 
 TYPE_3__* current_SC ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  in_arbitration ; 
 int in_command ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_5__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC8(Scsi_Cmnd * SCpnt, void (*done) (Scsi_Cmnd *))
{
	struct Scsi_Host *shpnt = SCpnt->device->host;

	if (in_command) {
		FUNC2("fd_mcs: fd_mcs_queue() NOT REENTRANT!\n");
	}
#if EVERY_ACCESS
	printk("queue: target = %d cmnd = 0x%02x pieces = %d size = %u\n",
		SCpnt->target, *(unsigned char *) SCpnt->cmnd,
		scsi_sg_count(SCpnt), scsi_bufflen(SCpnt));
#endif

	FUNC0(shpnt);

	SCpnt->scsi_done = done;	/* Save this for the done function */
	current_SC = SCpnt;

	/* Initialize static data */

	if (FUNC4(current_SC)) {
		current_SC->SCp.buffer = FUNC6(current_SC);
		current_SC->SCp.ptr = FUNC7(current_SC->SCp.buffer);
		current_SC->SCp.this_residual = current_SC->SCp.buffer->length;
		current_SC->SCp.buffers_residual = FUNC5(current_SC) - 1;
	} else {
		current_SC->SCp.ptr = NULL;
		current_SC->SCp.this_residual = 0;
		current_SC->SCp.buffer = NULL;
		current_SC->SCp.buffers_residual = 0;
	}


	current_SC->SCp.Status = 0;
	current_SC->SCp.Message = 0;
	current_SC->SCp.have_data_in = 0;
	current_SC->SCp.sent_command = 0;
	current_SC->SCp.phase = in_arbitration;

	/* Start arbitration */
	FUNC1(0x00, Interrupt_Cntl_port);
	FUNC1(0x00, SCSI_Cntl_port);	/* Disable data drivers */
	FUNC1(adapter_mask, SCSI_Data_NoACK_port);	/* Set our id bit */
	in_command = 1;
	FUNC1(0x20, Interrupt_Cntl_port);
	FUNC1(0x14 | PARITY_MASK, TMC_Cntl_port);	/* Start arbitration */

	return 0;
}