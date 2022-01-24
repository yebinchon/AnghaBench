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
struct subchannel {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ccw_device *cdev)
{
	struct subchannel *sch;

	/* Get subchannel reference for local processing. */
	if (!FUNC1(cdev->dev.parent))
		return;
	sch = FUNC3(cdev->dev.parent);
	FUNC0(sch);
	/* Release subchannel reference for local processing. */
	FUNC2(&sch->dev);
}