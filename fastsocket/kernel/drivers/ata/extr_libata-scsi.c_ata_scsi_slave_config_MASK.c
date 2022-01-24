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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device*) ; 
 int FUNC1 (struct scsi_device*,struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 struct ata_port* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct scsi_device *sdev)
{
	struct ata_port *ap = FUNC3(sdev->host);
	struct ata_device *dev = FUNC0(ap, sdev);
	int rc = 0;

	FUNC2(sdev);

	if (dev)
		rc = FUNC1(sdev, dev);

	return rc;
}