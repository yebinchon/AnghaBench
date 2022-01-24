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
typedef  scalar_t__ u8 ;
struct slot {int dummy; } ;
struct pcie_device {int /*<<< orphan*/  device; struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;
struct controller {struct slot* slot; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct controller*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct controller* FUNC8 (struct pcie_device*) ; 
 int FUNC9 (struct controller*) ; 
 scalar_t__ FUNC10 (struct pci_dev*) ; 
 scalar_t__ pciehp_disable ; 
 int /*<<< orphan*/  FUNC11 (struct slot*) ; 
 scalar_t__ pciehp_force ; 
 int /*<<< orphan*/  FUNC12 (struct slot*,scalar_t__*) ; 
 int FUNC13 (struct slot*) ; 
 int /*<<< orphan*/  FUNC14 (struct controller*) ; 
 int /*<<< orphan*/  FUNC15 (struct pcie_device*,struct controller*) ; 

__attribute__((used)) static int FUNC16(struct pcie_device *dev)
{
	int rc;
	struct controller *ctrl;
	struct slot *slot;
	u8 value;
	struct pci_dev *pdev = dev->port;

	if (pciehp_disable)
		goto err_out_none;

	if (pciehp_force)
		FUNC5(&dev->device,
			 "Bypassing BIOS check for pciehp use on %s\n",
			 FUNC7(pdev));
	else if (FUNC10(dev->port))
		goto err_out_none;

	ctrl = FUNC8(dev);
	if (!ctrl) {
		FUNC4(&dev->device, "Controller initialization failed\n");
		goto err_out_none;
	}
	FUNC15(dev, ctrl);

	/* Setup the slot information structures */
	rc = FUNC6(ctrl);
	if (rc) {
		if (rc == -EBUSY)
			FUNC3(ctrl, "Slot already registered by another "
				  "hotplug driver\n");
		else
			FUNC2(ctrl, "Slot initialization failed\n");
		goto err_out_release_ctlr;
	}

	/* Enable events after we have setup the data structures */
	rc = FUNC9(ctrl);
	if (rc) {
		FUNC2(ctrl, "Notification initialization failed\n");
		goto err_out_release_ctlr;
	}

	/* Check if slot is occupied */
	slot = ctrl->slot;
	FUNC12(slot, &value);
	if (value) {
		if (pciehp_force)
			FUNC11(slot);
	} else {
		/* Power off slot if not occupied */
		if (FUNC0(ctrl)) {
			rc = FUNC13(slot);
			if (rc)
				goto err_out_free_ctrl_slot;
		}
	}

	return 0;

err_out_free_ctrl_slot:
	FUNC1(ctrl);
err_out_release_ctlr:
	FUNC14(ctrl);
err_out_none:
	return -ENODEV;
}