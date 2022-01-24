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
struct i915_hw_ppgtt {int num_pd_entries; struct i915_hw_ppgtt* pt_pages; struct i915_hw_ppgtt* pt_dma_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct i915_hw_ppgtt) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_hw_ppgtt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct i915_hw_ppgtt,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i915_hw_ppgtt *ppgtt)
{
	int i;

	if (ppgtt->pt_dma_addr) {
		for (i = 0; i < ppgtt->num_pd_entries; i++)
			FUNC2(ppgtt->dev->pdev,
				       ppgtt->pt_dma_addr[i],
				       4096, PCI_DMA_BIDIRECTIONAL);
	}

	FUNC1(ppgtt->pt_dma_addr);
	for (i = 0; i < ppgtt->num_pd_entries; i++)
		FUNC0(ppgtt->pt_pages[i]);
	FUNC1(ppgtt->pt_pages);
	FUNC1(ppgtt);
}