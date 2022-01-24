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
struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int readers; int writers; int exclusive; TYPE_1__* ubi; int /*<<< orphan*/  vol_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  volumes_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int UBI_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ubi_volume_desc *desc)
{
	int users, err;
	struct ubi_volume *vol = desc->vol;

	FUNC1(&vol->ubi->volumes_lock);
	users = vol->readers + vol->writers + vol->exclusive;
	FUNC3(users > 0);
	if (users > 1) {
		FUNC0("%d users for volume %d", users, vol->vol_id);
		err = -EBUSY;
	} else {
		vol->readers = vol->writers = 0;
		vol->exclusive = 1;
		err = desc->mode;
		desc->mode = UBI_EXCLUSIVE;
	}
	FUNC2(&vol->ubi->volumes_lock);

	return err;
}