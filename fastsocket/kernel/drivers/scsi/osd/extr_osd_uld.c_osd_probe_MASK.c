#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  owner; } ;
struct osd_uld_device {int minor; TYPE_1__ cdev; struct device* class_member; int /*<<< orphan*/  od; struct gendisk* disk; int /*<<< orphan*/  kref; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  major; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  SCSI_OSD_MAJOR ; 
 int SCSI_OSD_MAX_MINOR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ TYPE_OSD ; 
 int FUNC5 (struct osd_uld_device*) ; 
 struct gendisk* FUNC6 (int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct osd_uld_device*) ; 
 struct device* FUNC11 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct osd_uld_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct osd_uld_device* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct scsi_device*) ; 
 int /*<<< orphan*/  osd_fops ; 
 int /*<<< orphan*/  osd_minor_ida ; 
 int /*<<< orphan*/  osd_sysfs_class ; 
 int /*<<< orphan*/  FUNC20 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 struct scsi_device* FUNC24 (struct device*) ; 

__attribute__((used)) static int FUNC25(struct device *dev)
{
	struct scsi_device *scsi_device = FUNC24(dev);
	struct gendisk *disk;
	struct osd_uld_device *oud;
	int minor;
	int error;

	if (scsi_device->type != TYPE_OSD)
		return -ENODEV;

	do {
		if (!FUNC13(&osd_minor_ida, GFP_KERNEL))
			return -ENODEV;

		error = FUNC12(&osd_minor_ida, &minor);
	} while (error == -EAGAIN);

	if (error)
		return error;
	if (minor >= SCSI_OSD_MAX_MINOR) {
		error = -EBUSY;
		goto err_retract_minor;
	}

	error = -ENOMEM;
	oud = FUNC18(sizeof(*oud), GFP_KERNEL);
	if (NULL == oud)
		goto err_retract_minor;

	FUNC17(&oud->kref);
	FUNC10(dev, oud);
	oud->minor = minor;

	/* allocate a disk and set it up */
	/* FIXME: do we need this since sg has already done that */
	disk = FUNC6(1);
	if (!disk) {
		FUNC2("alloc_disk failed\n");
		goto err_free_osd;
	}
	disk->major = SCSI_OSD_MAJOR;
	disk->first_minor = oud->minor;
	FUNC23(disk->disk_name, "osd%d", oud->minor);
	oud->disk = disk;

	/* hold one more reference to the scsi_device that will get released
	 * in __release, in case a logout is happening while fs is mounted
	 */
	FUNC21(scsi_device);
	FUNC19(&oud->od, scsi_device);

	/* Detect the OSD Version */
	error = FUNC5(oud);
	if (error) {
		FUNC2("osd detection failed, non-compatible OSD device\n");
		goto err_put_disk;
	}

	/* init the char-device for communication with user-mode */
	FUNC9(&oud->cdev, &osd_fops);
	oud->cdev.owner = THIS_MODULE;
	error = FUNC7(&oud->cdev,
			 FUNC1(SCSI_OSD_MAJOR, oud->minor), 1);
	if (error) {
		FUNC2("cdev_add failed\n");
		goto err_put_disk;
	}
	FUNC16(&oud->cdev.kobj); /* 2nd ref see osd_remove() */

	/* class_member */
	oud->class_member = FUNC11(osd_sysfs_class, dev,
		FUNC1(SCSI_OSD_MAJOR, oud->minor), "%s", disk->disk_name);
	if (FUNC0(oud->class_member)) {
		FUNC2("class_device_create failed\n");
		error = FUNC4(oud->class_member);
		goto err_put_cdev;
	}

	FUNC10(oud->class_member, oud);

	FUNC3("osd_probe %s\n", disk->disk_name);
	return 0;

err_put_cdev:
	FUNC8(&oud->cdev);
err_put_disk:
	FUNC22(scsi_device);
	FUNC20(disk);
err_free_osd:
	FUNC10(dev, NULL);
	FUNC15(oud);
err_retract_minor:
	FUNC14(&osd_minor_ida, minor);
	return error;
}