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
typedef  size_t u16 ;
struct protection_domain {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct notifier_block {int dummy; } ;
struct dma_ops_domain {size_t target_dev; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dma_ops; } ;
struct device {TYPE_2__ archdata; } ;
struct amd_iommu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
#define  BUS_NOTIFY_ADD_DEVICE 129 
#define  BUS_NOTIFY_UNBOUND_DRIVER 128 
 size_t* amd_iommu_alias_table ; 
 int /*<<< orphan*/  amd_iommu_dma_ops ; 
 size_t amd_iommu_last_bdf ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct protection_domain*,size_t) ; 
 struct dma_ops_domain* FUNC3 (struct amd_iommu*) ; 
 struct protection_domain* FUNC4 (size_t) ; 
 struct dma_ops_domain* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct amd_iommu*) ; 
 int /*<<< orphan*/  iommu_pass_through ; 
 int /*<<< orphan*/  iommu_pd_list ; 
 int /*<<< orphan*/  iommu_pd_list_lock ; 
 int /*<<< orphan*/  FUNC7 (struct amd_iommu*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pt_domain ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct notifier_block *nb,
				  unsigned long action, void *data)
{
	struct device *dev = data;
	struct pci_dev *pdev = FUNC11(dev);
	u16 devid = FUNC1(pdev->bus->number, pdev->devfn);
	struct protection_domain *domain;
	struct dma_ops_domain *dma_domain;
	struct amd_iommu *iommu;
	unsigned long flags;

	if (devid > amd_iommu_last_bdf)
		goto out;

	devid = amd_iommu_alias_table[devid];

	iommu = amd_iommu_rlookup_table[devid];
	if (iommu == NULL)
		goto out;

	domain = FUNC4(devid);

	switch (action) {
	case BUS_NOTIFY_UNBOUND_DRIVER:
		if (!domain)
			goto out;
		if (iommu_pass_through)
			break;
		FUNC2(domain, devid);
		break;
	case BUS_NOTIFY_ADD_DEVICE:

		if (iommu_pass_through) {
			FUNC0(iommu, pt_domain, devid);
			break;
		}

		/* allocate a protection domain if a device is added */
		dma_domain = FUNC5(devid);
		if (dma_domain)
			goto out;
		dma_domain = FUNC3(iommu);
		if (!dma_domain)
			goto out;
		dma_domain->target_dev = devid;

		FUNC9(&iommu_pd_list_lock, flags);
		FUNC8(&dma_domain->list, &iommu_pd_list);
		FUNC10(&iommu_pd_list_lock, flags);

		dev->archdata.dma_ops = &amd_iommu_dma_ops;

		break;
	default:
		goto out;
	}

	FUNC7(iommu, devid);
	FUNC6(iommu);

out:
	return 0;
}