#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {size_t unit_address; } ;
struct disk_info {TYPE_1__* viocd_disk; int /*<<< orphan*/  viocd_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct disk_info* viocd_diskinfo ; 

__attribute__((used)) static int FUNC4(struct vio_dev *vdev)
{
	struct disk_info *d = &viocd_diskinfo[vdev->unit_address];

	FUNC3(&d->viocd_info);
	FUNC1(d->viocd_disk);
	FUNC0(d->viocd_disk->queue);
	FUNC2(d->viocd_disk);
	return 0;
}