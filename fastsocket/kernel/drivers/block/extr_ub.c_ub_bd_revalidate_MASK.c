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
struct TYPE_2__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  bsize; } ;
struct ub_lun {TYPE_1__ capacity; int /*<<< orphan*/  udev; } ;
struct gendisk {int /*<<< orphan*/  queue; struct ub_lun* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ub_lun*) ; 

__attribute__((used)) static int FUNC3(struct gendisk *disk)
{
	struct ub_lun *lun = disk->private_data;

	FUNC2(lun->udev, lun);

	/* XXX Support sector size switching like in sr.c */
	FUNC0(disk->queue, lun->capacity.bsize);
	FUNC1(disk, lun->capacity.nsec);
	// set_disk_ro(sdkp->disk, lun->readonly);

	return 0;
}