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
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {scalar_t__ maxch; int /*<<< orphan*/ * branch_1; int /*<<< orphan*/ * branch_0; struct pci_dev* fsb_error_regs; struct pci_dev* branchmap_werrors; struct pci_dev* system_address; } ;

/* Variables and functions */
 scalar_t__ CHANNELS_PER_BRANCH ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_ERR ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_FBD0 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_5400_FBD1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct mem_ctl_info *mci, int dev_idx)
{
	struct i5400_pvt *pvt;
	struct pci_dev *pdev;

	pvt = mci->pvt_info;
	pvt->branchmap_werrors = NULL;
	pvt->fsb_error_regs = NULL;
	pvt->branch_0 = NULL;
	pvt->branch_1 = NULL;

	/* Attempt to 'get' the MCH register we want */
	pdev = NULL;
	while (!pvt->branchmap_werrors || !pvt->fsb_error_regs) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL,
				      PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
		if (!pdev) {
			/* End of list, leave */
			FUNC2(KERN_ERR,
				"'system address,Process Bus' "
				"device not found:"
				"vendor 0x%x device 0x%x ERR funcs "
				"(broken BIOS?)\n",
				PCI_VENDOR_ID_INTEL,
				PCI_DEVICE_ID_INTEL_5400_ERR);
			goto error;
		}

		/* Store device 16 funcs 1 and 2 */
		switch (FUNC0(pdev->devfn)) {
		case 1:
			pvt->branchmap_werrors = pdev;
			break;
		case 2:
			pvt->fsb_error_regs = pdev;
			break;
		}
	}

	FUNC1("System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->system_address),
		pvt->system_address->vendor, pvt->system_address->device);
	FUNC1("Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->branchmap_werrors),
		pvt->branchmap_werrors->vendor, pvt->branchmap_werrors->device);
	FUNC1("FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
		FUNC5(pvt->fsb_error_regs),
		pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

	pvt->branch_0 = FUNC4(PCI_VENDOR_ID_INTEL,
				       PCI_DEVICE_ID_INTEL_5400_FBD0, NULL);
	if (!pvt->branch_0) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 0' device not found:"
			"vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5400_FBD0);
		goto error;
	}

	/* If this device claims to have more than 2 channels then
	 * fetch Branch 1's information
	 */
	if (pvt->maxch < CHANNELS_PER_BRANCH)
		return 0;

	pvt->branch_1 = FUNC4(PCI_VENDOR_ID_INTEL,
				       PCI_DEVICE_ID_INTEL_5400_FBD1, NULL);
	if (!pvt->branch_1) {
		FUNC2(KERN_ERR,
			"MC: 'BRANCH 1' device not found:"
			"vendor 0x%x device 0x%x Func 0 "
			"(broken BIOS?)\n",
			PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_5400_FBD1);
		goto error;
	}

	return 0;

error:
	FUNC3(mci);
	return -ENODEV;
}