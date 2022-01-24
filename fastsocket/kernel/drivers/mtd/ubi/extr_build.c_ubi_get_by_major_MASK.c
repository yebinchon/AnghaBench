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
struct ubi_device {scalar_t__ ref_count; int /*<<< orphan*/  dev; TYPE_1__ cdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UBI_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ubi_device** ubi_devices ; 
 int /*<<< orphan*/  ubi_devices_lock ; 

struct ubi_device *FUNC5(int major)
{
	int i;
	struct ubi_device *ubi;

	FUNC2(&ubi_devices_lock);
	for (i = 0; i < UBI_MAX_DEVICES; i++) {
		ubi = ubi_devices[i];
		if (ubi && FUNC0(ubi->cdev.dev) == major) {
			FUNC4(ubi->ref_count >= 0);
			ubi->ref_count += 1;
			FUNC1(&ubi->dev);
			FUNC3(&ubi_devices_lock);
			return ubi;
		}
	}
	FUNC3(&ubi_devices_lock);

	return NULL;
}