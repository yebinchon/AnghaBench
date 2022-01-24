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
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;
struct kvm_device {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int num_vq; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct virtqueue*) ; 
 int FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 
 struct virtqueue* FUNC3 (struct virtio_device*,int,int /*<<< orphan*/ *,char const*) ; 
 struct kvm_device* FUNC4 (struct virtio_device*) ; 

__attribute__((used)) static int FUNC5(struct virtio_device *vdev, unsigned nvqs,
			struct virtqueue *vqs[],
			vq_callback_t *callbacks[],
			const char *names[])
{
	struct kvm_device *kdev = FUNC4(vdev);
	int i;

	/* We must have this many virtqueues. */
	if (nvqs > kdev->desc->num_vq)
		return -ENOENT;

	for (i = 0; i < nvqs; ++i) {
		vqs[i] = FUNC3(vdev, i, callbacks[i], names[i]);
		if (FUNC0(vqs[i]))
			goto error;
	}
	return 0;

error:
	FUNC2(vdev);
	return FUNC1(vqs[i]);
}