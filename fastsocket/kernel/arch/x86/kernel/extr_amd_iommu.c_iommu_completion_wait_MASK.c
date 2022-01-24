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
struct amd_iommu {int need_sync; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct amd_iommu *iommu)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(&iommu->lock, flags);

	if (!iommu->need_sync)
		goto out;

	ret = FUNC0(iommu);

	iommu->need_sync = false;

	if (ret)
		goto out;

	FUNC1(iommu);

out:
	FUNC3(&iommu->lock, flags);

	return 0;
}