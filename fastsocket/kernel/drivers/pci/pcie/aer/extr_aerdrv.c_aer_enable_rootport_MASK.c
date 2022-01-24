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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct aer_rpc {TYPE_1__* rpd; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 scalar_t__ PCI_ERR_COR_STATUS ; 
 scalar_t__ PCI_ERR_ROOT_COMMAND ; 
 scalar_t__ PCI_ERR_ROOT_STATUS ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA ; 
 int /*<<< orphan*/  PCI_EXP_RTCTL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int /*<<< orphan*/  ROOT_PORT_INTR_ON_MESG_MASK ; 
 int /*<<< orphan*/  SYSTEM_ERROR_INTR_ON_MESG_MASK ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC7(struct aer_rpc *rpc)
{
	struct pci_dev *pdev = rpc->rpd->port;
	int aer_pos;
	u16 reg16;
	u32 reg32;

	/* Clear PCIe Capability's Device Status */
	FUNC4(pdev, PCI_EXP_DEVSTA, &reg16);
	FUNC5(pdev, PCI_EXP_DEVSTA, reg16);

	/* Disable system error generation in response to error messages */
	FUNC3(pdev, PCI_EXP_RTCTL,
				   SYSTEM_ERROR_INTR_ON_MESG_MASK);

	aer_pos = FUNC0(pdev, PCI_EXT_CAP_ID_ERR);
	/* Clear error status */
	FUNC1(pdev, aer_pos + PCI_ERR_ROOT_STATUS, &reg32);
	FUNC2(pdev, aer_pos + PCI_ERR_ROOT_STATUS, reg32);
	FUNC1(pdev, aer_pos + PCI_ERR_COR_STATUS, &reg32);
	FUNC2(pdev, aer_pos + PCI_ERR_COR_STATUS, reg32);
	FUNC1(pdev, aer_pos + PCI_ERR_UNCOR_STATUS, &reg32);
	FUNC2(pdev, aer_pos + PCI_ERR_UNCOR_STATUS, reg32);

	/*
	 * Enable error reporting for the root port device and downstream port
	 * devices.
	 */
	FUNC6(pdev, true);

	/* Enable Root Port's interrupt in response to error messages */
	FUNC1(pdev, aer_pos + PCI_ERR_ROOT_COMMAND, &reg32);
	reg32 |= ROOT_PORT_INTR_ON_MESG_MASK;
	FUNC2(pdev, aer_pos + PCI_ERR_ROOT_COMMAND, reg32);
}