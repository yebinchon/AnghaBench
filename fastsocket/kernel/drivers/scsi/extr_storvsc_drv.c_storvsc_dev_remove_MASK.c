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
struct storvsc_device {int destroy; } ;
struct hv_device {TYPE_1__* channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  inbound_lock; } ;

/* Variables and functions */
 struct storvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct storvsc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct storvsc_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct hv_device *device)
{
	struct storvsc_device *stor_device;
	unsigned long flags;

	stor_device = FUNC0(device);

	FUNC3(&device->channel->inbound_lock, flags);
	stor_device->destroy = true;
	FUNC4(&device->channel->inbound_lock, flags);

	/*
	 * At this point, all outbound traffic should be disable. We
	 * only allow inbound traffic (responses) to proceed so that
	 * outstanding requests can be completed.
	 */

	FUNC5(stor_device);

	/*
	 * Since we have already drained, we don't need to busy wait
	 * as was done in final_release_stor_device()
	 * Note that we cannot set the ext pointer to NULL until
	 * we have drained - to drain the outgoing packets, we need to
	 * allow incoming packets.
	 */
	FUNC3(&device->channel->inbound_lock, flags);
	FUNC1(device, NULL);
	FUNC4(&device->channel->inbound_lock, flags);

	/* Close the channel */
	FUNC6(device->channel);

	FUNC2(stor_device);
	return 0;
}