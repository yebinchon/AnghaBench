#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_hdr {int asc; } ;
struct scsi_cd {int previous_state; TYPE_1__* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;
struct TYPE_3__ {int changed; } ;

/* Variables and functions */
 int CDSL_CURRENT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDEV_EVT_MEDIA_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_sense_hdr*) ; 
 struct scsi_sense_hdr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cdrom_device_info*) ; 
 int FUNC6 (TYPE_1__*,struct scsi_sense_hdr*) ; 

__attribute__((used)) static int FUNC7(struct cdrom_device_info *cdi, int slot)
{
	struct scsi_cd *cd = cdi->handle;
	int retval;
	struct scsi_sense_hdr *sshdr;

	if (CDSL_CURRENT != slot) {
		/* no changer support */
		return -EINVAL;
	}

	sshdr =  FUNC2(sizeof(*sshdr), GFP_KERNEL);
	retval = FUNC6(cd->device, sshdr);
	if (retval || (FUNC3(sshdr) &&
		       /* 0x3a is medium not present */
		       sshdr->asc == 0x3a)) {
		/* Media not present or unable to test, unit probably not
		 * ready. This usually means there is no disc in the drive.
		 * Mark as changed, and we will figure it out later once
		 * the drive is available again.
		 */
		cd->device->changed = 1;
		/* This will force a flush, if called from check_disk_change */
		retval = 1;
		goto out;
	};

	retval = cd->device->changed;
	cd->device->changed = 0;
	/* If the disk changed, the capacity will now be different,
	 * so we force a re-read of this information */
	if (retval) {
		/* check multisession offset etc */
		FUNC5(cdi);
		FUNC0(cd);
	}

out:
	/* Notify userspace, that media has changed. */
	if (retval != cd->previous_state)
		FUNC4(cd->device, SDEV_EVT_MEDIA_CHANGE,
				     GFP_KERNEL);
	cd->previous_state = retval;
	FUNC1(sshdr);

	return retval;
}