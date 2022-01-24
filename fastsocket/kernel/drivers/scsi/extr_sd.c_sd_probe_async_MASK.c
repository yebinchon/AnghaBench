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
typedef  int u32 ;
struct scsi_disk {int index; int media_present; int first_scan; int /*<<< orphan*/  dev; scalar_t__ capacity; scalar_t__ ATO; scalar_t__ RCD; scalar_t__ WCE; scalar_t__ cache_override; scalar_t__ write_prot; struct scsi_device* device; int /*<<< orphan*/  driver; struct gendisk* disk; } ;
struct device {int dummy; } ;
struct scsi_device {int sector_size; scalar_t__ removable; struct device sdev_gendev; int /*<<< orphan*/  request_queue; } ;
struct gendisk {int first_minor; int flags; struct device* driverfs_dev; int /*<<< orphan*/  queue; int /*<<< orphan*/ * private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  minors; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;

/* Variables and functions */
 int GENHD_FL_DRIVERFS ; 
 int GENHD_FL_EXT_DEVT ; 
 int GENHD_FL_REMOVABLE ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int SD_MAX_DISKS ; 
 int /*<<< orphan*/  SD_MINORS ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_disk*) ; 
 int /*<<< orphan*/  sd_fops ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  sd_prep_fn ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct scsi_disk*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*) ; 
 int /*<<< orphan*/  sd_unprep_fn ; 

__attribute__((used)) static void FUNC9(void *data, async_cookie_t cookie)
{
	struct scsi_disk *sdkp = data;
	struct scsi_device *sdp;
	struct gendisk *gd;
	u32 index;
	struct device *dev;

	sdp = sdkp->device;
	gd = sdkp->disk;
	index = sdkp->index;
	dev = &sdp->sdev_gendev;

	if (index < SD_MAX_DISKS) {
		gd->major = FUNC6((index & 0xf0) >> 4);
		gd->first_minor = ((index & 0xf) << 4) | (index & 0xfff00);
		gd->minors = SD_MINORS;
	}
	gd->fops = &sd_fops;
	gd->private_data = &sdkp->driver;
	gd->queue = sdkp->device->request_queue;

	/* defaults, until the device tells us otherwise */
	sdp->sector_size = 512;
	sdkp->capacity = 0;
	sdkp->media_present = 1;
	sdkp->write_prot = 0;
	sdkp->cache_override = 0;
	sdkp->WCE = 0;
	sdkp->RCD = 0;
	sdkp->ATO = 0;
	sdkp->first_scan = 1;

	FUNC8(gd);

	FUNC1(sdp->request_queue, sd_prep_fn);
	FUNC2(sdp->request_queue, sd_unprep_fn);

	gd->driverfs_dev = &sdp->sdev_gendev;
	gd->flags = GENHD_FL_EXT_DEVT | GENHD_FL_DRIVERFS;
	if (sdp->removable)
		gd->flags |= GENHD_FL_REMOVABLE;

	FUNC3(dev, sdkp);
	FUNC0(gd);
	if (sdkp->capacity)
		FUNC5(sdkp);

	FUNC8(gd);

	FUNC7(KERN_NOTICE, sdkp, "Attached SCSI %sdisk\n",
		  sdp->removable ? "removable " : "");
	FUNC4(&sdkp->dev);
}