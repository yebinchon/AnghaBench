#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zcrypt_device {TYPE_2__* ap_dev; int /*<<< orphan*/  list; TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_3__ device; } ;
struct TYPE_4__ {scalar_t__ rng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_device_attr_group ; 
 int /*<<< orphan*/  zcrypt_device_count ; 
 int /*<<< orphan*/  zcrypt_device_lock ; 
 int /*<<< orphan*/  FUNC5 (struct zcrypt_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct zcrypt_device *zdev)
{
	if (zdev->ops->rng)
		FUNC6();
	FUNC2(&zcrypt_device_lock);
	zcrypt_device_count--;
	FUNC0(&zdev->list);
	FUNC3(&zcrypt_device_lock);
	FUNC4(&zdev->ap_dev->device.kobj,
			   &zcrypt_device_attr_group);
	FUNC1(&zdev->ap_dev->device);
	FUNC5(zdev);
}