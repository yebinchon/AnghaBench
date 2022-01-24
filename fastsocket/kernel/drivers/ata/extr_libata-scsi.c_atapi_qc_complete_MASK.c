#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct scsi_cmnd {int* cmnd; void* result; } ;
struct ata_queued_cmd {unsigned int err_mask; int flags; scalar_t__* cdb; int /*<<< orphan*/  (* scsidone ) (struct scsi_cmnd*) ;struct scsi_cmnd* scsicmd; TYPE_4__* dev; TYPE_2__* ap; } ;
struct TYPE_8__ {TYPE_3__* sdev; } ;
struct TYPE_7__ {scalar_t__ locked; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ error_handler; } ;

/* Variables and functions */
 unsigned int AC_ERR_DEV ; 
 scalar_t__ ALLOW_MEDIUM_REMOVAL ; 
 int ATA_QCFLAG_SENSE_VALID ; 
 int INQUIRY ; 
 void* SAM_STAT_CHECK_CONDITION ; 
 void* SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_queued_cmd*) ; 
 int* FUNC3 (struct scsi_cmnd*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static void FUNC9(struct ata_queued_cmd *qc)
{
	struct scsi_cmnd *cmd = qc->scsicmd;
	unsigned int err_mask = qc->err_mask;

	FUNC0("ENTER, err_mask 0x%X\n", err_mask);

	/* handle completion from new EH */
	if (FUNC8(qc->ap->ops->error_handler &&
		     (err_mask || qc->flags & ATA_QCFLAG_SENSE_VALID))) {

		if (!(qc->flags & ATA_QCFLAG_SENSE_VALID)) {
			/* FIXME: not quite right; we don't want the
			 * translation of taskfile registers into a
			 * sense descriptors, since that's only
			 * correct for ATA, not ATAPI
			 */
			FUNC1(qc);
		}

		/* SCSI EH automatically locks door if sdev->locked is
		 * set.  Sometimes door lock request continues to
		 * fail, for example, when no media is present.  This
		 * creates a loop - SCSI EH issues door lock which
		 * fails and gets invoked again to acquire sense data
		 * for the failed command.
		 *
		 * If door lock fails, always clear sdev->locked to
		 * avoid this infinite loop.
		 */
		if (qc->cdb[0] == ALLOW_MEDIUM_REMOVAL)
			qc->dev->sdev->locked = 0;

		qc->scsicmd->result = SAM_STAT_CHECK_CONDITION;
		qc->scsidone(cmd);
		FUNC2(qc);
		return;
	}

	/* successful completion or old EH failure path */
	if (FUNC8(err_mask & AC_ERR_DEV)) {
		cmd->result = SAM_STAT_CHECK_CONDITION;
		FUNC5(qc);
		return;
	} else if (FUNC8(err_mask)) {
		/* FIXME: not quite right; we don't want the
		 * translation of taskfile registers into
		 * a sense descriptors, since that's only
		 * correct for ATA, not ATAPI
		 */
		FUNC1(qc);
	} else {
		u8 *scsicmd = cmd->cmnd;

		if ((scsicmd[0] == INQUIRY) && ((scsicmd[1] & 0x03) == 0)) {
			unsigned long flags;
			u8 *buf;

			buf = FUNC3(cmd, true, &flags);

	/* ATAPI devices typically report zero for their SCSI version,
	 * and sometimes deviate from the spec WRT response data
	 * format.  If SCSI version is reported as zero like normal,
	 * then we make the following fixups:  1) Fake MMC-5 version,
	 * to indicate to the Linux scsi midlayer this is a modern
	 * device.  2) Ensure response data format / ATAPI information
	 * are always correct.
	 */
			if (buf[2] == 0) {
				buf[2] = 0x5;
				buf[3] = 0x32;
			}

			FUNC4(cmd, true, &flags);
		}

		cmd->result = SAM_STAT_GOOD;
	}

	qc->scsidone(cmd);
	FUNC2(qc);
}