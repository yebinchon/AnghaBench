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
struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP_SW_NAME ; 
 int /*<<< orphan*/  KERN_WARNING ; 
#define  NOT_READY 128 
 int SCSI_DH_IO ; 
 int SCSI_DH_RETRY ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC0 (unsigned char*,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC2(struct scsi_device *sdev, unsigned char *sense)
{
	struct scsi_sense_hdr sshdr;
	int rc;

	rc = FUNC0(sense, SCSI_SENSE_BUFFERSIZE, &sshdr);
	if (!rc) {
		FUNC1(KERN_WARNING, sdev,
			    "%s: sending start_stop_unit failed, "
			    "no sense available\n",
			    HP_SW_NAME);
		return SCSI_DH_IO;
	}
	switch (sshdr.sense_key) {
	case NOT_READY:
		if ((sshdr.asc == 0x04) && (sshdr.ascq == 3)) {
			/*
			 * LUN not ready - manual intervention required
			 *
			 * Switch-over in progress, retry.
			 */
			rc = SCSI_DH_RETRY;
			break;
		}
		/* fall through */
	default:
		FUNC1(KERN_WARNING, sdev,
			   "%s: sending start_stop_unit failed, sense %x/%x/%x\n",
			   HP_SW_NAME, sshdr.sense_key, sshdr.asc,
			   sshdr.ascq);
		rc = SCSI_DH_IO;
	}

	return rc;
}