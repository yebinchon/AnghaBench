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
struct virtio_device {int dummy; } ;
struct kvm_device_desc {unsigned int config_len; } ;
struct TYPE_2__ {struct kvm_device_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_device_desc*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,unsigned int) ; 
 TYPE_1__* FUNC3 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev, unsigned int offset,
		   void *buf, unsigned len)
{
	struct kvm_device_desc *desc = FUNC3(vdev)->desc;

	FUNC0(offset + len > desc->config_len);
	FUNC2(buf, FUNC1(desc) + offset, len);
}