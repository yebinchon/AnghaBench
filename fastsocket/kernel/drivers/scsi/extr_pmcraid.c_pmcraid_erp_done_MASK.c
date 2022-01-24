#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  sense_buffer; } ;
struct pmcraid_instance {int /*<<< orphan*/  pdev; } ;
struct pmcraid_cmd {scalar_t__ sense_buffer_dma; int /*<<< orphan*/ * sense_buffer; TYPE_3__* ioa_cb; struct pmcraid_instance* drv_inst; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_6__ {TYPE_2__ ioarcb; TYPE_1__ ioasa; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC8(struct pmcraid_cmd *cmd)
{
	struct scsi_cmnd *scsi_cmd = cmd->scsi_cmd;
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	u32 ioasc = FUNC1(cmd->ioa_cb->ioasa.ioasc);

	if (FUNC0(ioasc) > 0) {
		scsi_cmd->result |= (DID_ERROR << 16);
		FUNC5(KERN_INFO, scsi_cmd,
			    "command CDB[0] = %x failed with IOASC: 0x%08X\n",
			    cmd->ioa_cb->ioarcb.cdb[0], ioasc);
	}

	/* if we had allocated sense buffers for request sense, copy the sense
	 * release the buffers
	 */
	if (cmd->sense_buffer != NULL) {
		FUNC2(scsi_cmd->sense_buffer,
		       cmd->sense_buffer,
		       SCSI_SENSE_BUFFERSIZE);
		FUNC3(pinstance->pdev,
				    SCSI_SENSE_BUFFERSIZE,
				    cmd->sense_buffer, cmd->sense_buffer_dma);
		cmd->sense_buffer = NULL;
		cmd->sense_buffer_dma = 0;
	}

	FUNC6(scsi_cmd);
	FUNC4(cmd);
	scsi_cmd->scsi_done(scsi_cmd);
}