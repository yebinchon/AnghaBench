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
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int /*<<< orphan*/  schid; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {scalar_t__ online; TYPE_1__ dev; } ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int) ; 
 scalar_t__ FUNC2 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ccw_device *cdev,
				    enum dev_event dev_event)
{
	struct subchannel *sch = FUNC4(cdev->dev.parent);

	if (cdev->online) {
		if (FUNC2(sch, (u32) (addr_t) sch))
			FUNC0(cdev, DEV_STATE_NOT_OPER);
		else
			FUNC1(cdev, dev_event);
	} else
		FUNC3(sch->schid);
}