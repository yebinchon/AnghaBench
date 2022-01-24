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
struct scsi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ owner; } ;
struct TYPE_3__ {struct scsi_device* scsi_device; } ;
struct osd_uld_device {TYPE_2__ cdev; int /*<<< orphan*/  minor; scalar_t__ class_member; TYPE_1__ od; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct device*,struct osd_uld_device*,struct scsi_device*,struct scsi_device*) ; 
 int /*<<< orphan*/  SCSI_OSD_MAJOR ; 
 int /*<<< orphan*/  FUNC2 (struct osd_uld_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct osd_uld_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osd_sysfs_class ; 
 struct scsi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct scsi_device *scsi_device = FUNC6(dev);
	struct osd_uld_device *oud = FUNC4(dev);

	if (!oud || (oud->od.scsi_device != scsi_device)) {
		FUNC1("Half cooked osd-device %p,%p || %p!=%p",
			dev, oud, oud ? oud->od.scsi_device : NULL,
			scsi_device);
	}

	if (oud->class_member)
		FUNC5(osd_sysfs_class,
			       FUNC0(SCSI_OSD_MAJOR, oud->minor));

	/* We have 2 references to the cdev. One is released here
	 * and also takes down the /dev/osdX mapping. The second
	 * Will be released in __remove() after all users have released
	 * the osd_uld_device.
	 */
	if (oud->cdev.owner)
		FUNC3(&oud->cdev);

	FUNC2(oud);
	return 0;
}