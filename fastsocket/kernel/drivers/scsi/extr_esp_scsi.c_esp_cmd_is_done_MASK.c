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
struct scsi_device {int id; int lun; int /*<<< orphan*/  hostdata; } ;
struct scsi_cmnd {unsigned int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * sense_buffer; struct scsi_device* device; } ;
struct esp_cmd_entry {int flags; int /*<<< orphan*/  list; int /*<<< orphan*/ * sense_ptr; int /*<<< orphan*/  sense_dma; int /*<<< orphan*/ * eh_done; } ;
struct esp {TYPE_2__* host; TYPE_1__* ops; int /*<<< orphan*/ * active_cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  unique_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* unmap_single ) (struct esp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int COMMAND_COMPLETE ; 
 int DID_OK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int DRIVER_SENSE ; 
 int ESP_CMD_FLAG_AUTOSENSE ; 
 int ESP_DEBUG_AUTOSENSE ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int esp_debug ; 
 int /*<<< orphan*/  FUNC1 (struct esp_cmd_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,struct esp_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct esp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC9(struct esp *esp, struct esp_cmd_entry *ent,
			    struct scsi_cmnd *cmd, unsigned int result)
{
	struct scsi_device *dev = cmd->device;
	int tgt = dev->id;
	int lun = dev->lun;

	esp->active_cmd = NULL;
	FUNC4(esp, cmd);
	FUNC1(ent, dev->hostdata);
	cmd->result = result;

	if (ent->eh_done) {
		FUNC0(ent->eh_done);
		ent->eh_done = NULL;
	}

	if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
		esp->ops->unmap_single(esp, ent->sense_dma,
				       SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
		ent->sense_ptr = NULL;

		/* Restore the message/status bytes to what we actually
		 * saw originally.  Also, report that we are providing
		 * the sense data.
		 */
		cmd->result = ((DRIVER_SENSE << 24) |
			       (DID_OK << 16) |
			       (COMMAND_COMPLETE << 8) |
			       (SAM_STAT_CHECK_CONDITION << 0));

		ent->flags &= ~ESP_CMD_FLAG_AUTOSENSE;
		if (esp_debug & ESP_DEBUG_AUTOSENSE) {
			int i;

			FUNC6("esp%d: tgt[%d] lun[%d] AUTO SENSE[ ",
			       esp->host->unique_id, tgt, lun);
			for (i = 0; i < 18; i++)
				FUNC6("%02x ", cmd->sense_buffer[i]);
			FUNC6("]\n");
		}
	}

	cmd->scsi_done(cmd);

	FUNC5(&ent->list);
	FUNC3(esp, ent);

	FUNC2(esp);
}