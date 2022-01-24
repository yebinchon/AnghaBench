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
struct scsi_disk {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;
struct gendisk {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC2 (struct gendisk*) ; 

__attribute__((used)) static struct scsi_disk *FUNC3(struct gendisk *disk)
{
	struct scsi_disk *sdkp = NULL;

	if (disk->private_data) {
		sdkp = FUNC2(disk);
		if (FUNC1(sdkp->device) == 0)
			FUNC0(&sdkp->dev);
		else
			sdkp = NULL;
	}
	return sdkp;
}