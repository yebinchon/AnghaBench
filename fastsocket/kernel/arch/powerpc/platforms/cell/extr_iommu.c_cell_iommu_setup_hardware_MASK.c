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
struct cbe_iommu {int /*<<< orphan*/  ptab; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct cbe_iommu*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cbe_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cbe_iommu*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cbe_iommu *iommu,
	unsigned long base, unsigned long size)
{
	FUNC2(iommu, base, size, 0, 0);
	iommu->ptab = FUNC0(iommu, base, size, 0, 0,
					    IOMMU_PAGE_SHIFT);
	FUNC1(iommu);
}