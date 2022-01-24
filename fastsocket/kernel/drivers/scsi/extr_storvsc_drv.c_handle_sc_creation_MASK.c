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
struct vmstorage_channel_properties {int dummy; } ;
struct vmbus_channel {TYPE_1__* primary_channel; } ;
struct storvsc_device {int open_sub_channel; } ;
struct hv_device {int dummy; } ;
struct TYPE_2__ {struct hv_device* device_obj; } ;

/* Variables and functions */
 struct storvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmstorage_channel_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  storvsc_on_channel_callback ; 
 int /*<<< orphan*/  storvsc_ringbuffer_size ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct vmbus_channel*) ; 

__attribute__((used)) static void FUNC3(struct vmbus_channel *new_sc)
{
	struct hv_device *device = new_sc->primary_channel->device_obj;
	struct storvsc_device *stor_device;
	struct vmstorage_channel_properties props;

	stor_device = FUNC0(device);
	if (!stor_device)
		return;

	if (stor_device->open_sub_channel == false)
		return;

	FUNC1(&props, 0, sizeof(struct vmstorage_channel_properties));

	FUNC2(new_sc,
		   storvsc_ringbuffer_size,
		   storvsc_ringbuffer_size,
		   (void *)&props,
		   sizeof(struct vmstorage_channel_properties),
		   storvsc_on_channel_callback, new_sc);
}