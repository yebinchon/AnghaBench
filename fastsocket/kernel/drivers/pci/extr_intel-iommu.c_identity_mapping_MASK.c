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
struct TYPE_3__ {struct device_domain_info* iommu; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct device_domain_info {scalar_t__ domain; } ;

/* Variables and functions */
 struct device_domain_info* DUMMY_DEVICE_DOMAIN_INFO ; 
 int /*<<< orphan*/  iommu_identity_mapping ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ si_domain ; 

__attribute__((used)) static int FUNC1(struct pci_dev *pdev)
{
	struct device_domain_info *info;

	if (FUNC0(!iommu_identity_mapping))
		return 0;

	info = pdev->dev.archdata.iommu;
	if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
		return (info->domain == si_domain);

	return 0;
}