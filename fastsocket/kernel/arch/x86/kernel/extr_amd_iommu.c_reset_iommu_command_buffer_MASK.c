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
struct amd_iommu {int reset_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct amd_iommu *iommu)
{
	FUNC4("AMD-Vi: Resetting IOMMU command buffer\n");

	if (iommu->reset_in_progress)
		FUNC3("AMD-Vi: ILLEGAL_COMMAND_ERROR while resetting command buffer\n");

	iommu->reset_in_progress = true;

	FUNC0(iommu);
	FUNC1(iommu);
	FUNC2(iommu);

	iommu->reset_in_progress = false;
}