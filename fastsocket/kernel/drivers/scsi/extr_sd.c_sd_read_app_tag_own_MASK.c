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
struct scsi_mode_data {int header_length; int length; int block_descriptor_length; } ;
struct scsi_disk {scalar_t__ protection_type; int ATO; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 scalar_t__ TYPE_DISK ; 
 int FUNC0 (struct scsi_device*,int,int,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_mode_data*,struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC1 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

void FUNC5(struct scsi_disk *sdkp, unsigned char *buffer)
{
	int res, offset;
	struct scsi_device *sdp = sdkp->device;
	struct scsi_mode_data data;
	struct scsi_sense_hdr sshdr;

	if (sdp->type != TYPE_DISK)
		return;

	if (sdkp->protection_type == 0)
		return;

	res = FUNC0(sdp, 1, 0x0a, buffer, 36, SD_TIMEOUT,
			      SD_MAX_RETRIES, &data, &sshdr);

	if (!FUNC2(res) || !data.header_length ||
	    data.length < 6) {
		FUNC4(KERN_WARNING, sdkp,
			  "getting Control mode page failed, assume no ATO\n");

		if (FUNC1(&sshdr))
			FUNC3(sdkp, &sshdr);

		return;
	}

	offset = data.header_length + data.block_descriptor_length;

	if ((buffer[offset] & 0x3f) != 0x0a) {
		FUNC4(KERN_ERR, sdkp, "ATO Got wrong page\n");
		return;
	}

	if ((buffer[offset + 5] & 0x80) == 0)
		return;

	sdkp->ATO = 1;

	return;
}