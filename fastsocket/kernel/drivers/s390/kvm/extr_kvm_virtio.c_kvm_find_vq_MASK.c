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
typedef  scalar_t__ u64 ;
struct virtqueue {struct kvm_vqconfig* priv; } ;
struct virtio_device {int dummy; } ;
struct kvm_vqconfig {int /*<<< orphan*/  num; scalar_t__ address; scalar_t__ token; } ;
struct kvm_device {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int num_vq; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct virtqueue* FUNC0 (int) ; 
 int /*<<< orphan*/  KVM_S390_VIRTIO_RING_ALIGN ; 
 int /*<<< orphan*/  kvm_notify ; 
 struct kvm_vqconfig* FUNC1 (TYPE_1__*) ; 
 struct kvm_device* FUNC2 (struct virtio_device*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct virtqueue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_device*,void*,int /*<<< orphan*/ ,void (*) (struct virtqueue*),char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct virtqueue *FUNC7(struct virtio_device *vdev,
				     unsigned index,
				     void (*callback)(struct virtqueue *vq),
				     const char *name)
{
	struct kvm_device *kdev = FUNC2(vdev);
	struct kvm_vqconfig *config;
	struct virtqueue *vq;
	int err;

	if (index >= kdev->desc->num_vq)
		return FUNC0(-ENOENT);

	config = FUNC1(kdev->desc)+index;

	err = FUNC3(config->address,
			       FUNC6(config->num,
					  KVM_S390_VIRTIO_RING_ALIGN));
	if (err)
		goto out;

	vq = FUNC5(config->num, KVM_S390_VIRTIO_RING_ALIGN,
				 vdev, (void *) config->address,
				 kvm_notify, callback, name);
	if (!vq) {
		err = -ENOMEM;
		goto unmap;
	}

	/*
	 * register a callback token
	 * The host will sent this via the external interrupt parameter
	 */
	config->token = (u64) vq;

	vq->priv = config;
	return vq;
unmap:
	FUNC4(config->address,
			    FUNC6(config->num,
				       KVM_S390_VIRTIO_RING_ALIGN));
out:
	return FUNC0(err);
}