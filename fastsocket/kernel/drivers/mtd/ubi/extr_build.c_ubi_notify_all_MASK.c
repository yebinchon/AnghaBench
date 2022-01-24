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
struct ubi_notification {int /*<<< orphan*/  vi; int /*<<< orphan*/  di; } ;
struct ubi_device {int vtbl_slots; int /*<<< orphan*/  device_mutex; int /*<<< orphan*/ * volumes; } ;
struct notifier_block {int /*<<< orphan*/  (* notifier_call ) (struct notifier_block*,int,struct ubi_notification*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct ubi_notification*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct notifier_block*,int,struct ubi_notification*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubi_notifiers ; 

int FUNC6(struct ubi_device *ubi, int ntype, struct notifier_block *nb)
{
	struct ubi_notification nt;
	int i, count = 0;

	FUNC4(ubi, &nt.di);

	FUNC1(&ubi->device_mutex);
	for (i = 0; i < ubi->vtbl_slots; i++) {
		/*
		 * Since the @ubi->device is locked, and we are not going to
		 * change @ubi->volumes, we do not have to lock
		 * @ubi->volumes_lock.
		 */
		if (!ubi->volumes[i])
			continue;

		FUNC5(ubi, ubi->volumes[i], &nt.vi);
		if (nb)
			nb->notifier_call(nb, ntype, &nt);
		else
			FUNC0(&ubi_notifiers, ntype,
						     &nt);
		count += 1;
	}
	FUNC2(&ubi->device_mutex);

	return count;
}