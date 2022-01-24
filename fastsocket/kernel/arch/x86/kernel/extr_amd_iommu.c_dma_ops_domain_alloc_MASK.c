#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ id; void* pt_root; struct dma_ops_domain* priv; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  lock; } ;
struct dma_ops_domain {int need_flush; int target_dev; scalar_t__ next_address; TYPE_2__** aperture; TYPE_1__ domain; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_4__ {int* bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_MODE_2_LEVEL ; 
 int /*<<< orphan*/  PD_DMA_OPS_MASK ; 
 scalar_t__ FUNC0 (struct amd_iommu*,struct dma_ops_domain*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_ops_domain*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_ops_domain* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dma_ops_domain *FUNC6(struct amd_iommu *iommu)
{
	struct dma_ops_domain *dma_dom;

	dma_dom = FUNC4(sizeof(struct dma_ops_domain), GFP_KERNEL);
	if (!dma_dom)
		return NULL;

	FUNC5(&dma_dom->domain.lock);

	dma_dom->domain.id = FUNC2();
	if (dma_dom->domain.id == 0)
		goto free_dma_dom;
	dma_dom->domain.mode = PAGE_MODE_2_LEVEL;
	dma_dom->domain.pt_root = (void *)FUNC3(GFP_KERNEL);
	dma_dom->domain.flags = PD_DMA_OPS_MASK;
	dma_dom->domain.priv = dma_dom;
	if (!dma_dom->domain.pt_root)
		goto free_dma_dom;

	dma_dom->need_flush = false;
	dma_dom->target_dev = 0xffff;

	if (FUNC0(iommu, dma_dom, true, GFP_KERNEL))
		goto free_dma_dom;

	/*
	 * mark the first page as allocated so we never return 0 as
	 * a valid dma-address. So we can use 0 as error value
	 */
	dma_dom->aperture[0]->bitmap[0] = 1;
	dma_dom->next_address = 0;


	return dma_dom;

free_dma_dom:
	FUNC1(dma_dom);

	return NULL;
}