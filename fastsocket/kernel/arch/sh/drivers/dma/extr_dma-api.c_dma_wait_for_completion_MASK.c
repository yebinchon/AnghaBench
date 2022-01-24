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
struct dma_info {TYPE_1__* ops; } ;
struct dma_channel {int flags; int /*<<< orphan*/  wait_queue; } ;
struct TYPE_2__ {scalar_t__ (* get_residue ) (struct dma_channel*) ;} ;

/* Variables and functions */
 int DMA_TEI_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct dma_channel* FUNC1 (unsigned int) ; 
 struct dma_info* FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct dma_channel*) ; 
 scalar_t__ FUNC4 (struct dma_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(unsigned int chan)
{
	struct dma_info *info = FUNC2(chan);
	struct dma_channel *channel = FUNC1(chan);

	if (channel->flags & DMA_TEI_CAPABLE) {
		FUNC5(channel->wait_queue,
			   (info->ops->get_residue(channel) == 0));
		return;
	}

	while (info->ops->get_residue(channel))
		FUNC0();
}