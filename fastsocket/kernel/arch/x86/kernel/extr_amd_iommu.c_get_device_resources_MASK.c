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
struct protection_domain {int /*<<< orphan*/  id; } ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct dma_ops_domain {struct protection_domain domain; } ;
struct device {int /*<<< orphan*/ * bus; } ;
struct amd_iommu {struct dma_ops_domain* default_dom; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t* amd_iommu_alias_table ; 
 size_t amd_iommu_last_bdf ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,struct protection_domain*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct protection_domain* FUNC4 (size_t) ; 
 struct dma_ops_domain* FUNC5 (size_t) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 struct pci_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
				struct amd_iommu **iommu,
				struct protection_domain **domain,
				u16 *bdf)
{
	struct dma_ops_domain *dma_dom;
	struct pci_dev *pcidev;
	u16 _bdf;

	*iommu = NULL;
	*domain = NULL;
	*bdf = 0xffff;

	if (dev->bus != &pci_bus_type)
		return 0;

	pcidev = FUNC6(dev);
	_bdf = FUNC2(pcidev->bus->number, pcidev->devfn);

	/* device not translated by any IOMMU in the system? */
	if (_bdf > amd_iommu_last_bdf)
		return 0;

	*bdf = amd_iommu_alias_table[_bdf];

	*iommu = amd_iommu_rlookup_table[*bdf];
	if (*iommu == NULL)
		return 0;
	*domain = FUNC4(*bdf);
	if (*domain == NULL) {
		dma_dom = FUNC5(*bdf);
		if (!dma_dom)
			dma_dom = (*iommu)->default_dom;
		*domain = &dma_dom->domain;
		FUNC1(*iommu, *domain, *bdf);
		FUNC0("Using protection domain %d for device %s\n",
			    (*domain)->id, FUNC3(dev));
	}

	if (FUNC4(_bdf) == NULL)
		FUNC1(*iommu, *domain, _bdf);

	return 1;
}