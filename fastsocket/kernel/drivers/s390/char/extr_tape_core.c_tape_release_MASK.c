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
struct tape_device {scalar_t__ tape_state; int /*<<< orphan*/  cdev; TYPE_1__* discipline; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ TS_IN_USE ; 
 int /*<<< orphan*/  TS_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct tape_device *device)
{
	FUNC2(FUNC0(device->cdev));
	if (device->tape_state == TS_IN_USE)
		FUNC4(device, TS_UNUSED);
	FUNC1(device->discipline->owner);
	FUNC3(FUNC0(device->cdev));
	return 0;
}