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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ubi_device {int ubi_num; TYPE_1__ cdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ubi_device** ubi_devices ; 
 int /*<<< orphan*/  ubi_devices_lock ; 

int FUNC3(int major)
{
	int i, ubi_num = -ENODEV;

	FUNC1(&ubi_devices_lock);
	for (i = 0; i < UBI_MAX_DEVICES; i++) {
		struct ubi_device *ubi = ubi_devices[i];

		if (ubi && FUNC0(ubi->cdev.dev) == major) {
			ubi_num = ubi->ubi_num;
			break;
		}
	}
	FUNC2(&ubi_devices_lock);

	return ubi_num;
}