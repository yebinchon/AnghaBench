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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sn ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  serial_no; TYPE_1__ dev; } ;
typedef  TYPE_2__ drive_info_struct ;
typedef  int __u8 ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,int,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* FUNC4 (struct device*) ; 
 struct ctlr_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	drive_info_struct *drv = FUNC4(dev);
	struct ctlr_info *h = FUNC5(drv->dev.parent);
	__u8 sn[16];
	unsigned long flags;
	int ret = 0;

	FUNC2(&h->lock, flags);
	if (h->busy_configuring)
		ret = -EBUSY;
	else
		FUNC0(sn, drv->serial_no, sizeof(sn));
	FUNC3(&h->lock, flags);

	if (ret)
		return ret;
	else
		return FUNC1(buf, 16 * 2 + 2,
				"%02X%02X%02X%02X%02X%02X%02X%02X"
				"%02X%02X%02X%02X%02X%02X%02X%02X\n",
				sn[0], sn[1], sn[2], sn[3],
				sn[4], sn[5], sn[6], sn[7],
				sn[8], sn[9], sn[10], sn[11],
				sn[12], sn[13], sn[14], sn[15]);
}