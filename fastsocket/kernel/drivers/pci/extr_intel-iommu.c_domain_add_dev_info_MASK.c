#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_domain_info* iommu; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; int /*<<< orphan*/  devfn; TYPE_3__* bus; } ;
struct dmar_domain {int /*<<< orphan*/  devices; } ;
struct device_domain_info {int /*<<< orphan*/  global; int /*<<< orphan*/  link; struct dmar_domain* domain; struct pci_dev* dev; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; int /*<<< orphan*/  segment; } ;
struct TYPE_6__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct device_domain_info* FUNC0 () ; 
 int /*<<< orphan*/  device_domain_list ; 
 int /*<<< orphan*/  device_domain_lock ; 
 int FUNC1 (struct dmar_domain*,struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_domain_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device_domain_info*) ; 

__attribute__((used)) static int FUNC8(struct dmar_domain *domain,
			       struct pci_dev *pdev,
			       int translation)
{
	struct device_domain_info *info;
	unsigned long flags;
	int ret;

	info = FUNC0();
	if (!info)
		return -ENOMEM;

	info->segment = FUNC4(pdev->bus);
	info->bus = pdev->bus->number;
	info->devfn = pdev->devfn;
	info->dev = pdev;
	info->domain = domain;

	FUNC5(&device_domain_lock, flags);
	FUNC3(&info->link, &domain->devices);
	FUNC3(&info->global, &device_domain_list);
	pdev->dev.archdata.iommu = info;
	FUNC6(&device_domain_lock, flags);

	ret = FUNC1(domain, pdev, translation);
	if (ret) {
		FUNC5(&device_domain_lock, flags);
		FUNC7(info);
		FUNC6(&device_domain_lock, flags);
		FUNC2(info);
		return ret;
	}

	return 0;
}