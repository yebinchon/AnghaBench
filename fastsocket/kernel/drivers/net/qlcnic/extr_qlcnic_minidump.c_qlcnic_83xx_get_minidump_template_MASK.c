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
typedef  scalar_t__ u32 ;
struct qlcnic_fw_dump {int /*<<< orphan*/ * tmpl_hdr; } ;
struct qlcnic_hardware_context {struct qlcnic_fw_dump fw_dump; } ;
struct qlcnic_adapter {scalar_t__ fw_version; struct pci_dev* pdev; struct qlcnic_hardware_context* ahw; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct qlcnic_adapter *adapter)
{
	u32 prev_version, current_version;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlcnic_fw_dump *fw_dump = &ahw->fw_dump;
	struct pci_dev *pdev = adapter->pdev;

	prev_version = adapter->fw_version;
	current_version = FUNC1(adapter);

	if (fw_dump->tmpl_hdr == NULL || current_version > prev_version) {
		if (fw_dump->tmpl_hdr)
			FUNC3(fw_dump->tmpl_hdr);
		if (!FUNC2(adapter))
			FUNC0(&pdev->dev, "Supports FW dump capability\n");
	}
}