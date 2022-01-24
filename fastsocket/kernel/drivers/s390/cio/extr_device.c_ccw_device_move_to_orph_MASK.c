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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct subchannel {TYPE_2__ dev; } ;
struct channel_subsystem {int /*<<< orphan*/  pseudo_subchannel; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 struct channel_subsystem* FUNC1 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC2(cdev->dev.parent);
	struct channel_subsystem *css = FUNC1(sch->dev.parent);

	return FUNC0(cdev, css->pseudo_subchannel);
}