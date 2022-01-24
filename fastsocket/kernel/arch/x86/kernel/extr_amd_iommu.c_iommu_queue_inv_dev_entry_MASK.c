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
struct iommu_cmd {int /*<<< orphan*/ * data; } ;
struct amd_iommu {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_INV_DEV_ENTRY ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amd_iommu*,struct iommu_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct amd_iommu *iommu, u16 devid)
{
	struct iommu_cmd cmd;
	int ret;

	FUNC0(iommu == NULL);

	FUNC3(&cmd, 0, sizeof(cmd));
	FUNC1(&cmd, CMD_INV_DEV_ENTRY);
	cmd.data[0] = devid;

	ret = FUNC2(iommu, &cmd);

	return ret;
}