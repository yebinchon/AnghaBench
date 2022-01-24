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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubi_devices_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct notifier_block*) ; 
 int /*<<< orphan*/  ubi_notifiers ; 

int FUNC4(struct notifier_block *nb,
				 int ignore_existing)
{
	int err;

	err = FUNC0(&ubi_notifiers, nb);
	if (err != 0)
		return err;
	if (ignore_existing)
		return 0;

	/*
	 * We are going to walk all UBI devices and all volumes, and
	 * notify the user about existing volumes by the %UBI_VOLUME_ADDED
	 * event. We have to lock the @ubi_devices_mutex to make sure UBI
	 * devices do not disappear.
	 */
	FUNC1(&ubi_devices_mutex);
	FUNC3(nb);
	FUNC2(&ubi_devices_mutex);

	return err;
}