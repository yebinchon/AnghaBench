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
typedef  int /*<<< orphan*/  rev ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {char* rev; TYPE_1__ dev; } ;
typedef  TYPE_2__ drive_info_struct ;

/* Variables and functions */
 int EBUSY ; 
 int REV_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,int,char*,char*) ; 
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
	char rev[REV_LEN + 1];
	unsigned long flags;
	int ret = 0;

	FUNC2(&h->lock, flags);
	if (h->busy_configuring)
		ret = -EBUSY;
	else
		FUNC0(rev, drv->rev, REV_LEN + 1);
	FUNC3(&h->lock, flags);

	if (ret)
		return ret;
	else
		return FUNC1(buf, sizeof(rev) + 1, "%s\n", drv->rev);
}