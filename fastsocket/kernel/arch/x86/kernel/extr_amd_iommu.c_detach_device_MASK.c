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
struct protection_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct protection_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd_iommu_devtable_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct protection_domain *domain, u16 devid)
{
	unsigned long flags;

	/* lock device table */
	FUNC1(&amd_iommu_devtable_lock, flags);
	FUNC0(domain, devid);
	FUNC2(&amd_iommu_devtable_lock, flags);
}