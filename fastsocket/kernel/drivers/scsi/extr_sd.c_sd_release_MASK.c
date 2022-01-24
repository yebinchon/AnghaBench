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
struct scsi_disk {int /*<<< orphan*/  openers; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ removable; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_REMOVAL_ALLOW ; 
 scalar_t__ FUNC1 (struct scsi_device*) ; 
 struct scsi_disk* FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static int FUNC6(struct gendisk *disk, fmode_t mode)
{
	struct scsi_disk *sdkp = FUNC2(disk);
	struct scsi_device *sdev = sdkp->device;

	FUNC0(3, FUNC5(KERN_INFO, sdkp, "sd_release\n"));

	if (!--sdkp->openers && sdev->removable) {
		if (FUNC1(sdev))
			FUNC4(sdev, SCSI_REMOVAL_ALLOW);
	}

	/*
	 * XXX and what if there are packets in flight and this close()
	 * XXX is followed by a "rmmod sd_mod"?
	 */
	FUNC3(sdkp);
	return 0;
}