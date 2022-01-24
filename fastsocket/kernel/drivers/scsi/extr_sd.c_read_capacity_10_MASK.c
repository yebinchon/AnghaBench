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
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {int capacity; unsigned int physical_block_size; } ;
struct scsi_device {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int ENODEV ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 unsigned char READ_CAPACITY ; 
 int READ_CAPACITY_RETRIES_ON_RESET ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 scalar_t__ UNIT_ATTENTION ; 
 void* FUNC0 (unsigned char*) ; 
 scalar_t__ FUNC1 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*,struct scsi_device*,struct scsi_sense_hdr*,int,int) ; 
 int FUNC4 (struct scsi_device*,unsigned char*,int /*<<< orphan*/ ,unsigned char*,int,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static int FUNC7(struct scsi_disk *sdkp, struct scsi_device *sdp,
						unsigned char *buffer)
{
	unsigned char cmd[16];
	struct scsi_sense_hdr sshdr;
	int sense_valid = 0;
	int the_result;
	int retries = 3, reset_retries = READ_CAPACITY_RETRIES_ON_RESET;
	sector_t lba;
	unsigned sector_size;

	do {
		cmd[0] = READ_CAPACITY;
		FUNC2(&cmd[1], 0, 9);
		FUNC2(buffer, 0, 8);

		the_result = FUNC4(sdp, cmd, DMA_FROM_DEVICE,
					buffer, 8, &sshdr,
					SD_TIMEOUT, SD_MAX_RETRIES, NULL);

		if (FUNC1(sdkp, &sshdr))
			return -ENODEV;

		if (the_result) {
			sense_valid = FUNC5(&sshdr);
			if (sense_valid &&
			    sshdr.sense_key == UNIT_ATTENTION &&
			    sshdr.asc == 0x29 && sshdr.ascq == 0x00)
				/* Device reset might occur several times,
				 * give it one more chance */
				if (--reset_retries > 0)
					continue;
		}
		retries--;

	} while (the_result && retries);

	if (the_result) {
		FUNC6(KERN_NOTICE, sdkp, "READ CAPACITY failed\n");
		FUNC3(sdkp, sdp, &sshdr, sense_valid, the_result);
		return -EINVAL;
	}

	sector_size = FUNC0(&buffer[4]);
	lba = FUNC0(&buffer[0]);

	if ((sizeof(sdkp->capacity) == 4) && (lba == 0xffffffff)) {
		FUNC6(KERN_ERR, sdkp, "Too big for this kernel. Use a "
			"kernel compiled with support for large block "
			"devices.\n");
		sdkp->capacity = 0;
		return -EOVERFLOW;
	}

	sdkp->capacity = lba + 1;
	sdkp->physical_block_size = sector_size;
	return sector_size;
}