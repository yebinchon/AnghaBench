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
struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_vqs ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  random_recv_done ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct virtio_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  virtio_hwrng ; 
 int /*<<< orphan*/ * vq ; 

__attribute__((used)) static int FUNC6(struct virtio_device *vdev)
{
	int err;

	if (vq) {
		/* We only support one device for now */
		return -EBUSY;
	}
	/* We expect a single virtqueue. */
	vq = FUNC5(vdev, random_recv_done, "input");
	if (FUNC0(vq)) {
		err = FUNC1(vq);
		vq = NULL;
		return err;
	}

	err = FUNC2(&virtio_hwrng);
	if (err) {
		vdev->config->del_vqs(vdev);
		vq = NULL;
		return err;
	}

	FUNC3();
	return 0;
}