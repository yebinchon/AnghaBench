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
typedef  size_t u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct dma_ops_domain {size_t target_dev; int /*<<< orphan*/  list; int /*<<< orphan*/  domain; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ANY_ID ; 
 size_t* amd_iommu_alias_table ; 
 size_t amd_iommu_last_bdf ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_ops_domain* FUNC2 (struct amd_iommu*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_ops_domain*,size_t) ; 
 int /*<<< orphan*/  iommu_pd_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct pci_dev *dev = NULL;
	struct dma_ops_domain *dma_dom;
	struct amd_iommu *iommu;
	u16 devid, __devid;

	while ((dev = FUNC6(PCI_ANY_ID, PCI_ANY_ID, dev)) != NULL) {
		__devid = devid = FUNC1(dev->bus->number, dev->devfn);
		if (devid > amd_iommu_last_bdf)
			continue;
		devid = amd_iommu_alias_table[devid];
		if (FUNC3(devid))
			continue;
		iommu = amd_iommu_rlookup_table[devid];
		if (!iommu)
			continue;
		dma_dom = FUNC2(iommu);
		if (!dma_dom)
			continue;
		FUNC4(dma_dom, devid);
		dma_dom->target_dev = devid;

		FUNC0(iommu, &dma_dom->domain, devid);
		if (__devid != devid)
			FUNC0(iommu, &dma_dom->domain, __devid);

		FUNC5(&dma_dom->list, &iommu_pd_list);
	}
}