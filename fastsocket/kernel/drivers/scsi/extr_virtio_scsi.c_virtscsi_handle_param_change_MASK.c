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
typedef  int u8 ;
struct virtio_scsi_event {unsigned int* lun; int reason; } ;
struct virtio_scsi {int /*<<< orphan*/  vdev; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct scsi_device* FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct virtio_scsi *vscsi,
					 struct virtio_scsi_event *event)
{
	struct scsi_device *sdev;
	struct Scsi_Host *shost = FUNC4(vscsi->vdev);
	unsigned int target = event->lun[1];
	unsigned int lun = (event->lun[2] << 8) | event->lun[3];
	u8 asc = event->reason & 255;
	u8 ascq = event->reason >> 8;

	sdev = FUNC1(shost, 0, target, lun);
	if (!sdev) {
		FUNC0("SCSI device %d 0 %d %d not found\n",
			shost->host_no, target, lun);
		return;
	}

	/* Handle "Parameters changed", "Mode parameters changed", and
	   "Capacity data has changed".  */
	if (asc == 0x2a && (ascq == 0x00 || ascq == 0x01 || ascq == 0x09))
		FUNC3(&sdev->sdev_gendev);

	FUNC2(sdev);
}