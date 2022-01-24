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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {int fw_version; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  QLCNIC_FW_VERSION_MINOR ; 
 int /*<<< orphan*/  QLCNIC_FW_VERSION_SUB ; 
 int /*<<< orphan*/  QLCNIC_LINUX_VERSIONID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	u32 fw_major, fw_minor, fw_build;
	struct pci_dev *pdev = adapter->pdev;

	fw_major = FUNC1(adapter, QLCNIC_FW_VERSION_MAJOR);
	fw_minor = FUNC1(adapter, QLCNIC_FW_VERSION_MINOR);
	fw_build = FUNC1(adapter, QLCNIC_FW_VERSION_SUB);
	adapter->fw_version = FUNC0(fw_major, fw_minor, fw_build);

	FUNC2(&pdev->dev, "Driver v%s, firmware version %d.%d.%d\n",
		 QLCNIC_LINUX_VERSIONID, fw_major, fw_minor, fw_build);

	return adapter->fw_version;
}