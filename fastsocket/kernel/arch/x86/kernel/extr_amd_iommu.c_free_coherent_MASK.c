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
typedef  int /*<<< orphan*/  u16 ;
struct protection_domain {int /*<<< orphan*/  lock; int /*<<< orphan*/  priv; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  cnt_free_coherent ; 
 int /*<<< orphan*/  FUNC3 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct amd_iommu**,struct protection_domain**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct device *dev, size_t size,
			  void *virt_addr, dma_addr_t dma_addr)
{
	unsigned long flags;
	struct amd_iommu *iommu;
	struct protection_domain *domain;
	u16 devid;

	FUNC0(cnt_free_coherent);

	if (!FUNC2(dev))
		return;

	FUNC5(dev, &iommu, &domain, &devid);

	if (!iommu || !domain)
		goto free_mem;

	if (!FUNC3(domain))
		goto free_mem;

	FUNC8(&domain->lock, flags);

	FUNC1(iommu, domain->priv, dma_addr, size, DMA_BIDIRECTIONAL);

	FUNC7(iommu);

	FUNC9(&domain->lock, flags);

free_mem:
	FUNC4((unsigned long)virt_addr, FUNC6(size));
}