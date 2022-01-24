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
struct pci_dev {int dummy; } ;
struct intel_iommu {int dummy; } ;
struct dmar_drhd_unit {struct intel_iommu* iommu; } ;

/* Variables and functions */
 struct dmar_drhd_unit* FUNC0 (struct pci_dev*) ; 

struct intel_iommu *FUNC1(struct pci_dev *dev)
{
	struct dmar_drhd_unit *drhd;

	drhd = FUNC0(dev);
	if (!drhd)
		return NULL;

	return drhd->iommu;
}