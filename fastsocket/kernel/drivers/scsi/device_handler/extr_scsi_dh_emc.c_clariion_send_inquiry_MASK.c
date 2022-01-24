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
struct clariion_dh_data {int /*<<< orphan*/  sense; scalar_t__ senselen; } ;

/* Variables and functions */
 int ADD_TO_MLQUEUE ; 
 int /*<<< orphan*/  CLARIION_NAME ; 
 int CLARIION_RETRIES ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int SCSI_DH_IO ; 
 int SCSI_DH_OK ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC0 (struct scsi_device*,struct scsi_sense_hdr*) ; 
 int FUNC1 (struct scsi_device*,struct clariion_dh_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scsi_device*,int,struct clariion_dh_data*) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev,
				 struct clariion_dh_data *csdev)
{
	int err, retry = CLARIION_RETRIES;

retry:
	err = FUNC4(sdev, 0xC0, csdev);
	if (err != SCSI_DH_OK && csdev->senselen) {
		struct scsi_sense_hdr sshdr;

		err = FUNC2(csdev->sense, SCSI_SENSE_BUFFERSIZE,
					   &sshdr);
		if (!err)
			return SCSI_DH_IO;

		err = FUNC0(sdev, &sshdr);
		if (retry > 0 && err == ADD_TO_MLQUEUE) {
			retry--;
			goto retry;
		}
		FUNC3(KERN_ERR, sdev, "%s: INQUIRY sense code "
			    "%02x/%02x/%02x\n", CLARIION_NAME,
			      sshdr.sense_key, sshdr.asc, sshdr.ascq);
		err = SCSI_DH_IO;
	} else {
		err = FUNC1(sdev, csdev);
	}
	return err;
}