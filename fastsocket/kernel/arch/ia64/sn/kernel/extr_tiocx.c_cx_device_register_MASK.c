#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hubdev_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int part_num; int mfg_num; int /*<<< orphan*/  nasid; } ;
struct cx_dev {int bt; TYPE_2__ dev; TYPE_1__ cx_id; struct hubdev_info* hubdev; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cx_dev*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_cxdev_control ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct cx_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tiocx_bus_release ; 
 int /*<<< orphan*/  tiocx_bus_type ; 

int
FUNC6(nasid_t nasid, int part_num, int mfg_num,
		   struct hubdev_info *hubdev, int bt)
{
	struct cx_dev *cx_dev;

	cx_dev = FUNC5(sizeof(struct cx_dev), GFP_KERNEL);
	FUNC0("cx_dev= 0x%p\n", cx_dev);
	if (cx_dev == NULL)
		return -ENOMEM;

	cx_dev->cx_id.part_num = part_num;
	cx_dev->cx_id.mfg_num = mfg_num;
	cx_dev->cx_id.nasid = nasid;
	cx_dev->hubdev = hubdev;
	cx_dev->bt = bt;

	cx_dev->dev.parent = NULL;
	cx_dev->dev.bus = &tiocx_bus_type;
	cx_dev->dev.release = tiocx_bus_release;
	FUNC1(&cx_dev->dev, "%d", cx_dev->cx_id.nasid);
	FUNC3(&cx_dev->dev);
	FUNC4(&cx_dev->dev);

	FUNC2(&cx_dev->dev, &dev_attr_cxdev_control);

	return 0;
}