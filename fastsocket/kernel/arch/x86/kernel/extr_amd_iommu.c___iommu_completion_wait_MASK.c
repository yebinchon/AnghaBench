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
struct iommu_cmd {int /*<<< orphan*/ * data; } ;
struct amd_iommu {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_COMPL_WAIT ; 
 int /*<<< orphan*/  CMD_COMPL_WAIT_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amd_iommu*,struct iommu_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct amd_iommu *iommu)
{
	struct iommu_cmd cmd;

	 FUNC2(&cmd, 0, sizeof(cmd));
	 cmd.data[0] = CMD_COMPL_WAIT_INT_MASK;
	 FUNC0(&cmd, CMD_COMPL_WAIT);

	 return FUNC1(iommu, &cmd);
}