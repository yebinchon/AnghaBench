#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  freeChannelQ; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {size_t devType; int flags; size_t lastDevType; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  DMA_Handle_t ;
typedef  TYPE_1__ DMA_DeviceAttribute_t ;
typedef  TYPE_2__ DMA_Channel_t ;

/* Variables and functions */
 int DMA_CHANNEL_FLAG_IN_USE ; 
 int DMA_CHANNEL_FLAG_IS_DEDICATED ; 
 int /*<<< orphan*/  DMA_DEVICE_FLAG_IN_USE ; 
 size_t DMA_DEVICE_NONE ; 
 TYPE_1__* DMA_gDeviceAttribute ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ gDMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(DMA_Handle_t handle	/* DMA handle. */
    ) {
	int rc = 0;
	DMA_Channel_t *channel;
	DMA_DeviceAttribute_t *devAttr;

	if (FUNC1(&gDMA.lock) < 0) {
		return -ERESTARTSYS;
	}

	channel = FUNC0(handle);
	if (channel == NULL) {
		rc = -EINVAL;
		goto out;
	}

	devAttr = &DMA_gDeviceAttribute[channel->devType];

	if ((channel->flags & DMA_CHANNEL_FLAG_IS_DEDICATED) == 0) {
		channel->lastDevType = channel->devType;
		channel->devType = DMA_DEVICE_NONE;
	}
	channel->flags &= ~DMA_CHANNEL_FLAG_IN_USE;
	devAttr->flags &= ~DMA_DEVICE_FLAG_IN_USE;

out:
	FUNC2(&gDMA.lock);

	FUNC3(&gDMA.freeChannelQ);

	return rc;
}