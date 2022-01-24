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
struct scsi_sense_hdr {int dummy; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int DRIVER_SENSE ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SD_FLUSH_TIMEOUT ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 unsigned char SYNCHRONIZE_CACHE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int FUNC2 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*,struct scsi_sense_hdr*) ; 

__attribute__((used)) static int FUNC5(struct scsi_disk *sdkp)
{
	int retries, res;
	struct scsi_device *sdp = sdkp->device;
	struct scsi_sense_hdr sshdr;

	if (!FUNC1(sdp))
		return -ENODEV;


	for (retries = 3; retries > 0; --retries) {
		unsigned char cmd[10] = { 0 };

		cmd[0] = SYNCHRONIZE_CACHE;
		/*
		 * Leave the rest of the command zero to indicate
		 * flush everything.
		 */
		res = FUNC2(sdp, cmd, DMA_NONE, NULL, 0, &sshdr,
				       SD_FLUSH_TIMEOUT, SD_MAX_RETRIES, NULL);
		if (res == 0)
			break;
	}

	if (res) {
		FUNC3(sdkp, res);
		if (FUNC0(res) & DRIVER_SENSE)
			FUNC4(sdkp, &sshdr);
	}

	if (res)
		return -EIO;
	return 0;
}