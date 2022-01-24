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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; } ;
struct mem_ctl_info {struct i5000_pvt* pvt_info; } ;
struct i5000_pvt {scalar_t__ maxch; struct pci_dev* branch_1; struct pci_dev* branch_0; struct pci_dev* fsb_error_regs; struct pci_dev* branchmap_werrors; struct pci_dev* system_address; } ;

/* Variables and functions */
 scalar_t__ CHANNELS_PER_BRANCH ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_I5000_BRANCH_0 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_I5000_BRANCH_1 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_I5000_DEV16 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct mem_ctl_info *mci, int dev_idx)
{
	//const struct i5000_dev_info *i5000_dev = &i5000_devs[dev_idx];
	struct i5000_pvt *pvt;
	struct pci_dev *pdev;

	pvt = mci->pvt_info;

	/* Attempt to 'get' the MCH register we want */
	pdev = NULL;
	while (1) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_I5000_DEV16, pdev);

		/* End of list, leave */
		if (pdev == NULL) {
			FUNC2(KERN_ERR,
				"'system address,Process Bus' "
				"device not found:"
				"vendor 0x%x device 0x%x FUNC 1 "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_I5000_DEV16);

			return 1;
		}

		/* Scan for device 16 func 1 */
		if (FUNC0(pdev->devfn) == 1)
			break;
	}

	pvt->branchmap_werrors = pdev;

	/* Attempt to 'get' the MCH register we want */
	pdev = NULL;
	while (1) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_I5000_DEV16, pdev);

		if (pdev == NULL) {
			FUNC2(KERN_ERR,
				"MC: 'branchmap,control,errors' "
				"device not found:"
				"vendor 0x%x device 0x%x Func 2 "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_I5000_DEV16);

			FUNC3(pvt->branchmap_werrors);
			return 1;
		}

		/* Scan for device 16 func 1 */
		if (FUNC0(pdev->devfn) == 2)
			break;
	}

	pvt->fsb_error_regs = pdev;

	FUNC1("System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->system_address),
		pvt->system_address->vendor, pvt->system_address->device);
	FUNC1("Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->branchmap_werrors),
		pvt->branchmap_werrors->vendor, pvt->branchmap_werrors->device);
	FUNC1("FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->fsb_error_regs),
		pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

	pdev = NULL;
	pdev = FUNC4(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_I5000_BRANCH_0, pdev);

	if (pdev == NULL) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 0' device not found:"
			"vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_I5000_BRANCH_0);

		FUNC3(pvt->branchmap_werrors);
		FUNC3(pvt->fsb_error_regs);
		return 1;
	}

	pvt->branch_0 = pdev;

	/* If this device claims to have more than 2 channels then
	 * fetch Branch 1's information
	 */
	if (pvt->maxch >= CHANNELS_PER_BRANCH) {
		pdev = NULL;
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_I5000_BRANCH_1, pdev);

		if (pdev == NULL) {
			FUNC2(KERN_ERR,
				"MC: 'BRANCH 1' device not found:"
				"vendor 0x%x device 0x%x Func 0 "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_I5000_BRANCH_1);

			FUNC3(pvt->branchmap_werrors);
			FUNC3(pvt->fsb_error_regs);
			FUNC3(pvt->branch_0);
			return 1;
		}

		pvt->branch_1 = pdev;
	}

	return 0;
}