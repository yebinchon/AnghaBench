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
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
struct amd_iommu {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  cnt_unmap_single ; 
 int /*<<< orphan*/  FUNC3 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct amd_iommu**,struct protection_domain**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct device *dev, dma_addr_t dma_addr, size_t size,
		       enum dma_data_direction dir, struct dma_attrs *attrs)
{
	unsigned long flags;
	struct amd_iommu *iommu;
	struct protection_domain *domain;
	u16 devid;

	FUNC0(cnt_unmap_single);

	if (!FUNC2(dev) ||
	    !FUNC4(dev, &iommu, &domain, &devid))
		/* device not handled by any AMD IOMMU */
		return;

	if (!FUNC3(domain))
		return;

	FUNC6(&domain->lock, flags);

	FUNC1(iommu, domain->priv, dma_addr, size, dir);

	FUNC5(iommu);

	FUNC7(&domain->lock, flags);
}