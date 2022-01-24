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
typedef  int u64 ;
typedef  size_t u16 ;
struct protection_domain {int mode; int /*<<< orphan*/  id; int /*<<< orphan*/  pt_root; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int DEV_ENTRY_MODE_MASK ; 
 int DEV_ENTRY_MODE_SHIFT ; 
 int IOMMU_PTE_IR ; 
 int IOMMU_PTE_IW ; 
 int IOMMU_PTE_P ; 
 int IOMMU_PTE_TV ; 
 TYPE_1__* amd_iommu_dev_table ; 
 struct protection_domain** amd_iommu_pd_table ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u16 devid, struct protection_domain *domain)
{
	u64 pte_root = FUNC2(domain->pt_root);

	pte_root |= (domain->mode & DEV_ENTRY_MODE_MASK)
		    << DEV_ENTRY_MODE_SHIFT;
	pte_root |= IOMMU_PTE_IR | IOMMU_PTE_IW | IOMMU_PTE_P | IOMMU_PTE_TV;

	amd_iommu_dev_table[devid].data[2] = domain->id;
	amd_iommu_dev_table[devid].data[1] = FUNC1(pte_root);
	amd_iommu_dev_table[devid].data[0] = FUNC0(pte_root);

	amd_iommu_pd_table[devid] = domain;
}