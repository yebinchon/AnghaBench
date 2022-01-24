#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_disk {int /*<<< orphan*/  capacity; TYPE_1__* disk; scalar_t__ DPOFUA; scalar_t__ WCE; scalar_t__ first_scan; scalar_t__ media_present; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int REQ_FLUSH ; 
 unsigned int REQ_FUA ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct scsi_disk* FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_disk*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_disk*) ; 
 scalar_t__ FUNC15 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct gendisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct gendisk *disk)
{
	struct scsi_disk *sdkp = FUNC5(disk);
	struct scsi_device *sdp = sdkp->device;
	unsigned char *buffer;
	unsigned flush = 0;

	FUNC0(3, FUNC6(KERN_INFO, sdkp,
				      "sd_revalidate_disk\n"));

	/*
	 * If the device is offline, don't try and read capacity or any
	 * of the other niceties.
	 */
	if (!FUNC4(sdp))
		goto out;

	buffer = FUNC3(SD_BUF_SIZE, GFP_KERNEL);
	if (!buffer) {
		FUNC6(KERN_WARNING, sdkp, "sd_revalidate_disk: Memory "
			  "allocation failure.\n");
		goto out;
	}

	FUNC14(sdkp);

	/*
	 * Without media there is no reason to ask; moreover, some devices
	 * react badly if we do.
	 */
	if (sdkp->media_present) {
		FUNC12(sdkp, buffer);

		if (FUNC15(sdp)) {
			FUNC10(sdkp);
			FUNC9(sdkp);
			FUNC8(sdkp);
		}

		FUNC13(sdkp, buffer);
		FUNC11(sdkp, buffer);
		FUNC7(sdkp, buffer);
	}

	sdkp->first_scan = 0;

	/*
	 * We now have all cache related info, determine how we deal
	 * with flush requests.
	 */
	if (sdkp->WCE) {
		flush |= REQ_FLUSH;
		if (sdkp->DPOFUA)
			flush |= REQ_FUA;
	}

	FUNC1(sdkp->disk->queue, flush);

	FUNC16(disk, sdkp->capacity);
	FUNC2(buffer);

 out:
	return 0;
}