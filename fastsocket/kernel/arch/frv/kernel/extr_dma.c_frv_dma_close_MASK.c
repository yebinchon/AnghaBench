#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct frv_dma_channel {int /*<<< orphan*/  flags; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRV_DMA_FLAGS_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct frv_dma_channel*) ; 
 struct frv_dma_channel* frv_dma_channels ; 
 int /*<<< orphan*/  frv_dma_channels_lock ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int dma)
{
	struct frv_dma_channel *channel = &frv_dma_channels[dma];
	unsigned long flags;

	FUNC2(&frv_dma_channels_lock, flags);

	FUNC0(channel->irq, channel);
	FUNC1(dma);

	channel->flags &= ~FRV_DMA_FLAGS_INUSE;

	FUNC3(&frv_dma_channels_lock, flags);
}