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
typedef  size_t ssize_t ;
typedef  enum sw_activity { ____Placeholder_sw_activity } sw_activity ;
struct TYPE_2__ {int (* sw_activity_store ) (struct ata_device*,int) ;} ;

/* Variables and functions */
 int ATA_FLAG_SW_ACTIVITY ; 
#define  BLINK_OFF 130 
#define  BLINK_ON 129 
 size_t EINVAL ; 
#define  OFF 128 
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ata_device*,int) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	const char *buf, size_t count)
{
	struct scsi_device *sdev = FUNC4(dev);
	struct ata_port *ap = FUNC1(sdev->host);
	struct ata_device *atadev = FUNC0(ap, sdev);
	enum sw_activity val;
	int rc;

	if (ap->ops->sw_activity_store && (ap->flags & ATA_FLAG_SW_ACTIVITY)) {
		val = FUNC2(buf, NULL, 0);
		switch (val) {
		case OFF: case BLINK_ON: case BLINK_OFF:
			rc = ap->ops->sw_activity_store(atadev, val);
			if (!rc)
				return count;
			else
				return rc;
		}
	}
	return -EINVAL;
}