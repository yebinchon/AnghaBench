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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int mbfc; unsigned long mba; unsigned long mbi; int /*<<< orphan*/  mme; } ;
struct subchannel {TYPE_2__ config; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct subchannel*) ; 
 struct subchannel* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ccw_device *cdev, u32 mme, int mbfc,
		     unsigned long address)
{
	struct subchannel *sch;

	sch = FUNC1(cdev->dev.parent);

	sch->config.mme = mme;
	sch->config.mbfc = mbfc;
	/* address can be either a block address or a block index */
	if (mbfc)
		sch->config.mba = address;
	else
		sch->config.mbi = address;

	return FUNC0(sch);
}