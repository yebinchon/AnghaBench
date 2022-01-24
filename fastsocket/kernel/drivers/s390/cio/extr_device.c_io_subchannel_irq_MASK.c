#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct subchannel {int /*<<< orphan*/  dev; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  DEV_EVENT_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC3 (struct subchannel*) ; 

__attribute__((used)) static void FUNC4(struct subchannel *sch)
{
	struct ccw_device *cdev;

	cdev = FUNC3(sch);

	FUNC0(6, "IRQ");
	FUNC0(6, FUNC2(&sch->dev));
	if (cdev)
		FUNC1(cdev, DEV_EVENT_INTERRUPT);
}