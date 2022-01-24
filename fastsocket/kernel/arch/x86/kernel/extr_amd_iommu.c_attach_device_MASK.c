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
struct protection_domain {int /*<<< orphan*/  id; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,struct protection_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd_iommu_devtable_lock ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct amd_iommu *iommu,
			  struct protection_domain *domain,
			  u16 devid)
{
	unsigned long flags;

	FUNC3(&amd_iommu_devtable_lock, flags);
	FUNC0(iommu, domain, devid);
	FUNC4(&amd_iommu_devtable_lock, flags);

	/*
	 * We might boot into a crash-kernel here. The crashed kernel
	 * left the caches in the IOMMU dirty. So we have to flush
	 * here to evict all dirty stuff.
	 */
	FUNC2(iommu, devid);
	FUNC1(iommu, domain->id);
}