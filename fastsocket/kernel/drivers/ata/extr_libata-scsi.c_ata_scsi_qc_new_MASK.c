#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_cmnd {int result; } ;
struct ata_queued_cmd {void (* scsidone ) (struct scsi_cmnd*) ;int /*<<< orphan*/  n_elem; int /*<<< orphan*/  sg; struct scsi_cmnd* scsicmd; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int DID_OK ; 
 int QUEUE_FULL ; 
 struct ata_queued_cmd* FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static struct ata_queued_cmd *FUNC3(struct ata_device *dev,
					      struct scsi_cmnd *cmd,
					      void (*done)(struct scsi_cmnd *))
{
	struct ata_queued_cmd *qc;

	qc = FUNC0(dev);
	if (qc) {
		qc->scsicmd = cmd;
		qc->scsidone = done;

		qc->sg = FUNC2(cmd);
		qc->n_elem = FUNC1(cmd);
	} else {
		cmd->result = (DID_OK << 16) | (QUEUE_FULL << 1);
		done(cmd);
	}

	return qc;
}