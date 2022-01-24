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
struct TYPE_3__ {TYPE_2__* int_hwmon_dev; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  hwmon_attrgroup ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	if (rdev->pm.int_hwmon_dev) {
		FUNC1(&rdev->pm.int_hwmon_dev->kobj, &hwmon_attrgroup);
		FUNC0(rdev->pm.int_hwmon_dev);
	}
}