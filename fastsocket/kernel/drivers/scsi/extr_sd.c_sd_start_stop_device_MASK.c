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
struct scsi_device {scalar_t__ start_stop_pwr_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int DRIVER_SENSE ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 unsigned char START_STOP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int FUNC2 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static int FUNC6(struct scsi_disk *sdkp, int start)
{
	unsigned char cmd[6] = { START_STOP };	/* START_VALID */
	struct scsi_sense_hdr sshdr;
	struct scsi_device *sdp = sdkp->device;
	int res;

	if (start)
		cmd[4] |= 1;	/* START */

	if (sdp->start_stop_pwr_cond)
		cmd[4] |= start ? 1 << 4 : 3 << 4;	/* Active or Standby */

	if (!FUNC1(sdp))
		return -ENODEV;

	res = FUNC2(sdp, cmd, DMA_NONE, NULL, 0, &sshdr,
			       SD_TIMEOUT, SD_MAX_RETRIES, NULL);
	if (res) {
		FUNC5(KERN_WARNING, sdkp, "START_STOP FAILED\n");
		FUNC3(sdkp, res);
		if (FUNC0(res) & DRIVER_SENSE)
			FUNC4(sdkp, &sshdr);
	}

	return res;
}