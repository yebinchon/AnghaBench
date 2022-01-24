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
struct scsi_disk {TYPE_1__* device; int /*<<< orphan*/  index; struct gendisk* disk; } ;
struct gendisk {int /*<<< orphan*/ * private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  sd_index_ida ; 
 int /*<<< orphan*/  sd_index_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct scsi_disk* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct scsi_disk *sdkp = FUNC6(dev);
	struct gendisk *disk = sdkp->disk;
	
	FUNC4(&sd_index_lock);
	FUNC0(&sd_index_ida, sdkp->index);
	FUNC5(&sd_index_lock);

	disk->private_data = NULL;
	FUNC3(disk);
	FUNC2(&sdkp->device->sdev_gendev);

	FUNC1(sdkp);
}