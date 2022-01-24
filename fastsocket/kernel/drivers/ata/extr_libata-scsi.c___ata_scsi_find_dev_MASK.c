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
struct scsi_device {int channel; int id; scalar_t__ lun; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 struct ata_device* FUNC0 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct ata_device *FUNC3(struct ata_port *ap,
					      const struct scsi_device *scsidev)
{
	int devno;

	/* skip commands not addressed to targets we simulate */
	if (!FUNC1(ap)) {
		if (FUNC2(scsidev->channel || scsidev->lun))
			return NULL;
		devno = scsidev->id;
	} else {
		if (FUNC2(scsidev->id || scsidev->lun))
			return NULL;
		devno = scsidev->channel;
	}

	return FUNC0(ap, devno);
}