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
struct dma_channel {int /*<<< orphan*/  busy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct dma_channel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dma_channel* FUNC1 (unsigned int) ; 
 struct dma_info* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_channel*) ; 

void FUNC4(unsigned int chan)
{
	struct dma_info *info = FUNC2(chan);
	struct dma_channel *channel = FUNC1(chan);

	if (info->ops->free)
		info->ops->free(channel);

	FUNC0(&channel->busy, 0);
}