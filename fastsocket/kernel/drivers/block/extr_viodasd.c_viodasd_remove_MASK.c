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
struct viodasd_device {int /*<<< orphan*/ * dev; TYPE_1__* disk; } ;
struct vio_dev {size_t unit_address; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct viodasd_device* viodasd_devices ; 

__attribute__((used)) static int FUNC3(struct vio_dev *vdev)
{
	struct viodasd_device *d;

	d = &viodasd_devices[vdev->unit_address];
	if (d->disk) {
		FUNC1(d->disk);
		FUNC0(d->disk->queue);
		FUNC2(d->disk);
		d->disk = NULL;
	}
	d->dev = NULL;
	return 0;
}