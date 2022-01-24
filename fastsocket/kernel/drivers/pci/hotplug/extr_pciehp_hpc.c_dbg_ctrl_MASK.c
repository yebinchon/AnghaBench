#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* u16 ;
struct pci_dev {char* vendor; char* device; char* subsystem_device; char* subsystem_vendor; int /*<<< orphan*/ * resource; int /*<<< orphan*/  irq; } ;
struct controller {char* slot_cap; TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct controller*) ; 
 scalar_t__ FUNC1 (struct controller*) ; 
 int DEVICE_COUNT_RESOURCE ; 
 scalar_t__ FUNC2 (struct controller*) ; 
 scalar_t__ FUNC3 (struct controller*) ; 
 scalar_t__ FUNC4 (struct controller*) ; 
 scalar_t__ FUNC5 (struct controller*) ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 scalar_t__ FUNC6 (struct controller*) ; 
 char* FUNC7 (struct controller*) ; 
 scalar_t__ FUNC8 (struct controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 char* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pciehp_debug ; 
 int /*<<< orphan*/  FUNC13 (struct controller*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static inline void FUNC14(struct controller *ctrl)
{
	int i;
	u16 reg16;
	struct pci_dev *pdev = ctrl->pcie->port;

	if (!pciehp_debug)
		return;

	FUNC9(ctrl, "Hotplug Controller:\n");
	FUNC9(ctrl, "  Seg/Bus/Dev/Func/IRQ : %s IRQ %d\n",
		  FUNC10(pdev), pdev->irq);
	FUNC9(ctrl, "  Vendor ID            : 0x%04x\n", pdev->vendor);
	FUNC9(ctrl, "  Device ID            : 0x%04x\n", pdev->device);
	FUNC9(ctrl, "  Subsystem ID         : 0x%04x\n",
		  pdev->subsystem_device);
	FUNC9(ctrl, "  Subsystem Vendor ID  : 0x%04x\n",
		  pdev->subsystem_vendor);
	FUNC9(ctrl, "  PCIe Cap offset      : 0x%02x\n",
		  FUNC11(pdev));
	for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
		if (!FUNC12(pdev, i))
			continue;
		FUNC9(ctrl, "  PCI resource [%d]     : %pR\n",
			  i, &pdev->resource[i]);
	}
	FUNC9(ctrl, "Slot Capabilities      : 0x%08x\n", ctrl->slot_cap);
	FUNC9(ctrl, "  Physical Slot Number : %d\n", FUNC7(ctrl));
	FUNC9(ctrl, "  Attention Button     : %3s\n",
		  FUNC0(ctrl) ? "yes" : "no");
	FUNC9(ctrl, "  Power Controller     : %3s\n",
		  FUNC6(ctrl) ? "yes" : "no");
	FUNC9(ctrl, "  MRL Sensor           : %3s\n",
		  FUNC4(ctrl)   ? "yes" : "no");
	FUNC9(ctrl, "  Attention Indicator  : %3s\n",
		  FUNC1(ctrl)   ? "yes" : "no");
	FUNC9(ctrl, "  Power Indicator      : %3s\n",
		  FUNC8(ctrl)    ? "yes" : "no");
	FUNC9(ctrl, "  Hot-Plug Surprise    : %3s\n",
		  FUNC3(ctrl) ? "yes" : "no");
	FUNC9(ctrl, "  EMI Present          : %3s\n",
		  FUNC2(ctrl)        ? "yes" : "no");
	FUNC9(ctrl, "  Command Completed    : %3s\n",
		  FUNC5(ctrl) ? "no" : "yes");
	FUNC13(ctrl, PCI_EXP_SLTSTA, &reg16);
	FUNC9(ctrl, "Slot Status            : 0x%04x\n", reg16);
	FUNC13(ctrl, PCI_EXP_SLTCTL, &reg16);
	FUNC9(ctrl, "Slot Control           : 0x%04x\n", reg16);
}