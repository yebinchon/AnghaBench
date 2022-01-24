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
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INV_IOMMU_ALL_PAGES_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*,struct iommu_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct amd_iommu *iommu, u16 domid)
{
	struct iommu_cmd cmd;
	unsigned long flags;

	FUNC0(&cmd, CMD_INV_IOMMU_ALL_PAGES_ADDRESS,
				      domid, 1, 1);

	FUNC4(&iommu->lock, flags);
	FUNC2(iommu, &cmd);
	FUNC1(iommu);
	FUNC3(iommu);
	FUNC5(&iommu->lock, flags);
}