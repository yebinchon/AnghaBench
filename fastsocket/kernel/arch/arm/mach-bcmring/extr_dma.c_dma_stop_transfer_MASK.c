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
struct TYPE_3__ {int /*<<< orphan*/  dmacHwHandle; } ;
typedef  int /*<<< orphan*/  DMA_Handle_t ;
typedef  TYPE_1__ DMA_Channel_t ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(DMA_Handle_t handle)
{
	DMA_Channel_t *channel;

	channel = FUNC0(handle);
	if (channel == NULL) {
		return -ENODEV;
	}

	FUNC1(channel->dmacHwHandle);

	return 0;
}