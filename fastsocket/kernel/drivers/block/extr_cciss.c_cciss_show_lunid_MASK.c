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
typedef  int /*<<< orphan*/  lunid ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  LunID; int /*<<< orphan*/  heads; TYPE_1__ dev; } ;
typedef  TYPE_2__ drive_info_struct ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* FUNC4 (struct device*) ; 
 struct ctlr_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	drive_info_struct *drv = FUNC4(dev);
	struct ctlr_info *h = FUNC5(drv->dev.parent);
	unsigned long flags;
	unsigned char lunid[8];

	FUNC2(&h->lock, flags);
	if (h->busy_configuring) {
		FUNC3(&h->lock, flags);
		return -EBUSY;
	}
	if (!drv->heads) {
		FUNC3(&h->lock, flags);
		return -ENOTTY;
	}
	FUNC0(lunid, drv->LunID, sizeof(lunid));
	FUNC3(&h->lock, flags);
	return FUNC1(buf, 20, "0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
		lunid[0], lunid[1], lunid[2], lunid[3],
		lunid[4], lunid[5], lunid[6], lunid[7]);
}