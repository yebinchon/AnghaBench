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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct iommu_cmd {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES ; 
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES_PDE_MASK ; 
 int /*<<< orphan*/  CMD_INV_IOMMU_PAGES_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iommu_cmd *cmd, u64 address,
					  u16 domid, int pde, int s)
{
	FUNC2(cmd, 0, sizeof(*cmd));
	address &= PAGE_MASK;
	FUNC0(cmd, CMD_INV_IOMMU_PAGES);
	cmd->data[1] |= domid;
	cmd->data[2] = FUNC1(address);
	cmd->data[3] = FUNC3(address);
	if (s) /* size bit - we flush more than one 4kb page */
		cmd->data[2] |= CMD_INV_IOMMU_PAGES_SIZE_MASK;
	if (pde) /* PDE bit - we wan't flush everything not only the PTEs */
		cmd->data[2] |= CMD_INV_IOMMU_PAGES_PDE_MASK;
}