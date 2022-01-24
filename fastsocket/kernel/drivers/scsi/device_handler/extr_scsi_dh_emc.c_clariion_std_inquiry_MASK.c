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
struct scsi_sense_hdr {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; int /*<<< orphan*/  sense_key; } ;
struct scsi_device {int dummy; } ;
struct clariion_dh_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  buffer; int /*<<< orphan*/  sense; scalar_t__ senselen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLARIION_NAME ; 
 int /*<<< orphan*/  CLARIION_SHORT_TRESPASS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_DH_DEV_UNSUPP ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_OK ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 char* FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (struct scsi_device*,int /*<<< orphan*/ ,struct clariion_dh_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev,
				struct clariion_dh_data *csdev)
{
	int err;
	char *sp_model;

	err = FUNC3(sdev, 0, csdev);
	if (err != SCSI_DH_OK && csdev->senselen) {
		struct scsi_sense_hdr sshdr;

		if (FUNC1(csdev->sense, SCSI_SENSE_BUFFERSIZE,
					 &sshdr)) {
			FUNC2(KERN_ERR, sdev, "%s: INQUIRY sense code "
				    "%02x/%02x/%02x\n", CLARIION_NAME,
				    sshdr.sense_key, sshdr.asc, sshdr.ascq);
		}
		err = SCSI_DH_IO;
		goto out;
	}

	sp_model = FUNC0(sdev, csdev->buffer);
	if (!sp_model) {
		err = SCSI_DH_DEV_UNSUPP;
		goto out;
	}

	/*
	 * FC Series arrays do not support long trespass
	 */
	if (!FUNC4(sp_model) || !FUNC5(sp_model, "FC",2))
		csdev->flags |= CLARIION_SHORT_TRESPASS;

	FUNC2(KERN_INFO, sdev,
		    "%s: detected Clariion %s, flags %x\n",
		    CLARIION_NAME, sp_model, csdev->flags);
out:
	return err;
}