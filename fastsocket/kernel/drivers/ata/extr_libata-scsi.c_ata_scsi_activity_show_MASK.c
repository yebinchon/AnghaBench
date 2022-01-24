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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int flags; TYPE_1__* ops; } ;
struct ata_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* sw_activity_show ) (struct ata_device*,char*) ;} ;

/* Variables and functions */
 int ATA_FLAG_SW_ACTIVITY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,char*) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	struct scsi_device *sdev = FUNC3(dev);
	struct ata_port *ap = FUNC1(sdev->host);
	struct ata_device *atadev = FUNC0(ap, sdev);

	if (ap->ops->sw_activity_show && (ap->flags & ATA_FLAG_SW_ACTIVITY))
		return ap->ops->sw_activity_show(atadev, buf);
	return -EINVAL;
}