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
struct pci_dev {int class; int /*<<< orphan*/  dev; } ;
struct hpp_type0 {int revision; scalar_t__ enable_perr; scalar_t__ enable_serr; int /*<<< orphan*/  latency_timer; int /*<<< orphan*/  cache_line_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int /*<<< orphan*/  PCI_BRIDGE_CTL_PARITY ; 
 int /*<<< orphan*/  PCI_BRIDGE_CTL_SERR ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int PCI_CLASS_BRIDGE_PCI ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_PARITY ; 
 int /*<<< orphan*/  PCI_COMMAND_SERR ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  PCI_SEC_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct hpp_type0 pci_default_type0 ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev, struct hpp_type0 *hpp)
{
	u16 pci_cmd, pci_bctl;

	if (!hpp) {
		/*
		 * Perhaps we *should* use default settings for PCIe, but
		 * pciehp didn't, so we won't either.
		 */
		if (FUNC2(dev))
			return;
		FUNC0(&dev->dev, "using default PCI settings\n");
		hpp = &pci_default_type0;
	}

	if (hpp->revision > 1) {
		FUNC1(&dev->dev,
			 "PCI settings rev %d not supported; using defaults\n",
			 hpp->revision);
		hpp = &pci_default_type0;
	}

	FUNC4(dev, PCI_CACHE_LINE_SIZE, hpp->cache_line_size);
	FUNC4(dev, PCI_LATENCY_TIMER, hpp->latency_timer);
	FUNC3(dev, PCI_COMMAND, &pci_cmd);
	if (hpp->enable_serr)
		pci_cmd |= PCI_COMMAND_SERR;
	else
		pci_cmd &= ~PCI_COMMAND_SERR;
	if (hpp->enable_perr)
		pci_cmd |= PCI_COMMAND_PARITY;
	else
		pci_cmd &= ~PCI_COMMAND_PARITY;
	FUNC5(dev, PCI_COMMAND, pci_cmd);

	/* Program bridge control value */
	if ((dev->class >> 8) == PCI_CLASS_BRIDGE_PCI) {
		FUNC4(dev, PCI_SEC_LATENCY_TIMER,
				      hpp->latency_timer);
		FUNC3(dev, PCI_BRIDGE_CONTROL, &pci_bctl);
		if (hpp->enable_serr)
			pci_bctl |= PCI_BRIDGE_CTL_SERR;
		else
			pci_bctl &= ~PCI_BRIDGE_CTL_SERR;
		if (hpp->enable_perr)
			pci_bctl |= PCI_BRIDGE_CTL_PARITY;
		else
			pci_bctl &= ~PCI_BRIDGE_CTL_PARITY;
		FUNC5(dev, PCI_BRIDGE_CONTROL, pci_bctl);
	}
}