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
struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_cmnd {int result; struct scsi_device* device; } ;
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int FUNC0 (struct scsi_cmnd*,void (*) (struct scsi_cmnd*),struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct scsi_cmnd*) ; 
 struct ata_device* FUNC2 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC3 (struct Scsi_Host*) ; 
 scalar_t__ FUNC4 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *))
{
	struct ata_port *ap;
	struct ata_device *dev;
	struct scsi_device *scsidev = cmd->device;
	struct Scsi_Host *shost = scsidev->host;
	int rc = 0;

	ap = FUNC3(shost);

	FUNC6(shost->host_lock);
	FUNC5(ap->lock);

	FUNC1(ap, cmd);

	dev = FUNC2(ap, scsidev);
	if (FUNC4(dev))
		rc = FUNC0(cmd, done, dev);
	else {
		cmd->result = (DID_BAD_TARGET << 16);
		done(cmd);
	}

	FUNC6(ap->lock);
	FUNC5(shost->host_lock);
	return rc;
}