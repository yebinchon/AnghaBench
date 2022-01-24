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
struct dma_info {unsigned int nr_channels; int flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/  list; scalar_t__ channels; } ;

/* Variables and functions */
 int DMAC_CHANNELS_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct dma_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dma_info *info)
{
	unsigned int i;

	for (i = 0; i < info->nr_channels; i++)
		FUNC0(info->channels + i, info);

	if (!(info->flags & DMAC_CHANNELS_CONFIGURED))
		FUNC1(info->channels);

	FUNC2(&info->list);
	FUNC3(info->pdev);
}