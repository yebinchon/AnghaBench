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
struct scsi_sense_hdr {int asc; } ;
struct scsi_disk {int media_present; int previous_state; struct scsi_device* device; } ;
struct scsi_device {int changed; int /*<<< orphan*/  removable; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDEV_EVT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_sense_hdr*) ; 
 struct scsi_sense_hdr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct scsi_disk* FUNC5 (struct gendisk*) ; 
 scalar_t__ FUNC6 (struct scsi_sense_hdr*) ; 
 int FUNC7 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_disk*) ; 

__attribute__((used)) static int FUNC11(struct gendisk *disk)
{
	struct scsi_disk *sdkp = FUNC5(disk);
	struct scsi_device *sdp = sdkp->device;
	struct scsi_sense_hdr *sshdr = NULL;
	int retval;

	FUNC0(3, FUNC8(KERN_INFO, sdkp, "sd_media_changed\n"));

	if (!sdp->removable)
		return 0;

	/*
	 * If the device is offline, don't send any commands - just pretend as
	 * if the command failed.  If the device ever comes back online, we
	 * can deal with it then.  It is only because of unrecoverable errors
	 * that we would ever take a device offline in the first place.
	 */
	if (!FUNC4(sdp)) {
		FUNC10(sdkp);
		retval = 1;
		goto out;
	}

	/*
	 * Using TEST_UNIT_READY enables differentiation between drive with
	 * no cartridge loaded - NOT READY, drive with changed cartridge -
	 * UNIT ATTENTION, or with same cartridge - GOOD STATUS.
	 *
	 * Drives that auto spin down. eg iomega jaz 1G, will be started
	 * by sd_spinup_disk() from sd_revalidate_disk(), which happens whenever
	 * sd_revalidate() is called.
	 */
	retval = -ENODEV;

	if (FUNC3(sdp)) {
		sshdr  = FUNC2(sizeof(*sshdr), GFP_KERNEL);
		retval = FUNC7(sdp, SD_TIMEOUT, SD_MAX_RETRIES,
					      sshdr);
	}

	/*
	 * Unable to test, unit probably not ready.   This usually
	 * means there is no disc in the drive.  Mark as changed,
	 * and we will figure it out later once the drive is
	 * available again.
	 */
	if (retval || (FUNC6(sshdr) &&
		       /* 0x3a is medium not present */
		       sshdr->asc == 0x3a)) {
		FUNC10(sdkp);
		retval = 1;
		goto out;
	}

	/*
	 * For removable scsi disk we have to recognise the presence
	 * of a disk in the drive. This is kept in the struct scsi_disk
	 * struct and tested at open !  Daniel Roche (dan@lectra.fr)
	 */
	sdkp->media_present = 1;

	retval = sdp->changed;
	sdp->changed = 0;
out:
	if (retval != sdkp->previous_state)
		FUNC9(sdp, SDEV_EVT_MEDIA_CHANGE, GFP_KERNEL);
	sdkp->previous_state = retval;
	FUNC1(sshdr);
	return retval;
}