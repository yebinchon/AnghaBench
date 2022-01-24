#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct ata_port {TYPE_1__* scsi_host; int /*<<< orphan*/  lock; } ;
struct ata_device {struct scsi_device* sdev; TYPE_2__* link; } ;
struct TYPE_4__ {struct ata_port* ap; } ;
struct TYPE_3__ {int /*<<< orphan*/  scan_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SDEV_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	struct scsi_device *sdev;
	unsigned long flags;

	/* Alas, we need to grab scan_mutex to ensure SCSI device
	 * state doesn't change underneath us and thus
	 * scsi_device_get() always succeeds.  The mutex locking can
	 * be removed if there is __scsi_device_get() interface which
	 * increments reference counts regardless of device state.
	 */
	FUNC3(&ap->scsi_host->scan_mutex);
	FUNC9(ap->lock, flags);

	/* clearing dev->sdev is protected by host lock */
	sdev = dev->sdev;
	dev->sdev = NULL;

	if (sdev) {
		/* If user initiated unplug races with us, sdev can go
		 * away underneath us after the host lock and
		 * scan_mutex are released.  Hold onto it.
		 */
		if (FUNC5(sdev) == 0) {
			/* The following ensures the attached sdev is
			 * offline on return from ata_scsi_offline_dev()
			 * regardless it wins or loses the race
			 * against this function.
			 */
			FUNC7(sdev, SDEV_OFFLINE);
		} else {
			FUNC0(1);
			sdev = NULL;
		}
	}

	FUNC10(ap->lock, flags);
	FUNC4(&ap->scsi_host->scan_mutex);

	if (sdev) {
		FUNC1(dev, KERN_INFO, "detaching (SCSI %s)\n",
			       FUNC2(&sdev->sdev_gendev));

		FUNC8(sdev);
		FUNC6(sdev);
	}
}