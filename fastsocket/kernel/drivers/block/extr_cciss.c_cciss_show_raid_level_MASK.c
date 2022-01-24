#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int /*<<< orphan*/  lock; scalar_t__ busy_configuring; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int raid_level; TYPE_1__ dev; } ;
typedef  TYPE_2__ drive_info_struct ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int RAID_UNKNOWN ; 
 char** raid_label ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (struct device*) ; 
 struct ctlr_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	drive_info_struct *drv = FUNC4(dev);
	struct ctlr_info *h = FUNC5(drv->dev.parent);
	int raid;
	unsigned long flags;

	FUNC1(&h->lock, flags);
	if (h->busy_configuring) {
		FUNC2(&h->lock, flags);
		return -EBUSY;
	}
	raid = drv->raid_level;
	FUNC2(&h->lock, flags);
	if (raid < 0 || raid > RAID_UNKNOWN)
		raid = RAID_UNKNOWN;

	return FUNC0(buf, FUNC3(raid_label[raid]) + 7, "RAID %s\n",
			raid_label[raid]);
}