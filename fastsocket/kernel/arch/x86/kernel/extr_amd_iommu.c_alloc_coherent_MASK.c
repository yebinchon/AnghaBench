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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct protection_domain {int /*<<< orphan*/  lock; int /*<<< orphan*/  priv; } ;
struct device {scalar_t__* dma_mask; scalar_t__ coherent_dma_mask; } ;
struct amd_iommu {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_DMA ; 
 int __GFP_DMA32 ; 
 int __GFP_HIGHMEM ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,struct amd_iommu*,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ bad_dma_address ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  cnt_alloc_coherent ; 
 int /*<<< orphan*/  FUNC4 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct amd_iommu**,struct protection_domain**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (void*) ; 

__attribute__((used)) static void *FUNC12(struct device *dev, size_t size,
			    dma_addr_t *dma_addr, gfp_t flag)
{
	unsigned long flags;
	void *virt_addr;
	struct amd_iommu *iommu;
	struct protection_domain *domain;
	u16 devid;
	phys_addr_t paddr;
	u64 dma_mask = dev->coherent_dma_mask;

	FUNC0(cnt_alloc_coherent);

	if (!FUNC3(dev))
		return NULL;

	if (!FUNC6(dev, &iommu, &domain, &devid))
		flag &= ~(__GFP_DMA | __GFP_HIGHMEM | __GFP_DMA32);

	flag |= __GFP_ZERO;
	virt_addr = (void *)FUNC1(flag, FUNC7(size));
	if (!virt_addr)
		return NULL;

	paddr = FUNC11(virt_addr);

	if (!iommu || !domain) {
		*dma_addr = (dma_addr_t)paddr;
		return virt_addr;
	}

	if (!FUNC4(domain))
		goto out_free;

	if (!dma_mask)
		dma_mask = *dev->dma_mask;

	FUNC9(&domain->lock, flags);

	*dma_addr = FUNC2(dev, iommu, domain->priv, paddr,
				 size, DMA_BIDIRECTIONAL, true, dma_mask);

	if (*dma_addr == bad_dma_address) {
		FUNC10(&domain->lock, flags);
		goto out_free;
	}

	FUNC8(iommu);

	FUNC10(&domain->lock, flags);

	return virt_addr;

out_free:

	FUNC5((unsigned long)virt_addr, FUNC7(size));

	return NULL;
}