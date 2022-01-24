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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int irq; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; } ;
struct controller {int mmio_base; int mmio_size; int cap_offset; int creg; int slot_device_offset; int num_slots; int first_slot; int slot_num_inc; struct pci_dev* pci_dev; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/ * hpc_ops; int /*<<< orphan*/  queue; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  crit_sect; } ;

/* Variables and functions */
 int ARBITER_SERR_MASK ; 
 int BUTTON_PRESS_INTR_MASK ; 
 int COMMAND_INTR_MASK ; 
 int CON_PFAULT_INTR_MASK ; 
 int CON_PFAULT_SERR_MASK ; 
 int ENOMEM ; 
 int FIRST_DEV_NUM ; 
 int GLOBAL_INTR_MASK ; 
 int GLOBAL_SERR_MASK ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int ISO_PFAULT_INTR_MASK ; 
 int MRL_CHANGE_INTR_MASK ; 
 int MRL_CHANGE_SERR_MASK ; 
 int /*<<< orphan*/  MY_NAME ; 
 int /*<<< orphan*/  PCI_CAP_ID_SHPC ; 
 scalar_t__ PCI_DEVICE_ID_AMD_GOLAM_7450 ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 int PRSNT_CHANGE_INTR_MASK ; 
 int PSN ; 
 int /*<<< orphan*/  SERR_INTR_ENABLE ; 
 int SERR_INTR_RSVDZ_MASK ; 
 int /*<<< orphan*/  SLOT_CONFIG ; 
 int SLOT_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLOT_REG_RSVDZ_MASK ; 
 int UPDOWN ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC20 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct controller*,int,int*) ; 
 int /*<<< orphan*/  shpc_isr ; 
 int FUNC22 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  shpchp_hpc_ops ; 
 int /*<<< orphan*/  shpchp_num_controllers ; 
 scalar_t__ shpchp_poll_mode ; 
 int /*<<< orphan*/  shpchp_wq ; 
 int /*<<< orphan*/  FUNC24 (struct controller*,int) ; 

int FUNC25(struct controller *ctrl, struct pci_dev *pdev)
{
	int rc = -1, num_slots = 0;
	u8 hp_slot;
	u32 shpc_base_offset;
	u32 tempdword, slot_reg, slot_config;
	u8 i;

	ctrl->pci_dev = pdev;  /* pci_dev of the P2P bridge */
	FUNC4(ctrl, "Hotplug Controller:\n");

	if (pdev->vendor == PCI_VENDOR_ID_AMD &&
	    pdev->device == PCI_DEVICE_ID_AMD_GOLAM_7450) {
		/* amd shpc driver doesn't use Base Offset; assume 0 */
		ctrl->mmio_base = FUNC17(pdev, 0);
		ctrl->mmio_size = FUNC16(pdev, 0);
	} else {
		ctrl->cap_offset = FUNC14(pdev, PCI_CAP_ID_SHPC);
		if (!ctrl->cap_offset) {
			FUNC5(ctrl, "Cannot find PCI capability\n");
			goto abort;
		}
		FUNC4(ctrl, " cap_offset = %x\n", ctrl->cap_offset);

		rc = FUNC21(ctrl, 0, &shpc_base_offset);
		if (rc) {
			FUNC5(ctrl, "Cannot read base_offset\n");
			goto abort;
		}

		rc = FUNC21(ctrl, 3, &tempdword);
		if (rc) {
			FUNC5(ctrl, "Cannot read slot config\n");
			goto abort;
		}
		num_slots = tempdword & SLOT_NUM;
		FUNC4(ctrl, " num_slots (indirect) %x\n", num_slots);

		for (i = 0; i < 9 + num_slots; i++) {
			rc = FUNC21(ctrl, i, &tempdword);
			if (rc) {
				FUNC5(ctrl,
					 "Cannot read creg (index = %d)\n", i);
				goto abort;
			}
			FUNC4(ctrl, " offset %d: value %x\n", i, tempdword);
		}

		ctrl->mmio_base =
			FUNC17(pdev, 0) + shpc_base_offset;
		ctrl->mmio_size = 0x24 + 0x4 * num_slots;
	}

	FUNC6(ctrl, "HPC vendor_id %x device_id %x ss_vid %x ss_did %x\n",
		  pdev->vendor, pdev->device, pdev->subsystem_vendor,
		  pdev->subsystem_device);

	rc = FUNC12(pdev);
	if (rc) {
		FUNC5(ctrl, "pci_enable_device failed\n");
		goto abort;
	}

	if (!FUNC20(ctrl->mmio_base, ctrl->mmio_size, MY_NAME)) {
		FUNC5(ctrl, "Cannot reserve MMIO region\n");
		rc = -1;
		goto abort;
	}

	ctrl->creg = FUNC9(ctrl->mmio_base, ctrl->mmio_size);
	if (!ctrl->creg) {
		FUNC5(ctrl, "Cannot remap MMIO region %lx @ %lx\n",
			 ctrl->mmio_size, ctrl->mmio_base);
		FUNC18(ctrl->mmio_base, ctrl->mmio_size);
		rc = -1;
		goto abort;
	}
	FUNC4(ctrl, "ctrl->creg %p\n", ctrl->creg);

	FUNC11(&ctrl->crit_sect);
	FUNC11(&ctrl->cmd_lock);

	/* Setup wait queue */
	FUNC8(&ctrl->queue);

	ctrl->hpc_ops = &shpchp_hpc_ops;

	/* Return PCI Controller Info */
	slot_config = FUNC22(ctrl, SLOT_CONFIG);
	ctrl->slot_device_offset = (slot_config & FIRST_DEV_NUM) >> 8;
	ctrl->num_slots = slot_config & SLOT_NUM;
	ctrl->first_slot = (slot_config & PSN) >> 16;
	ctrl->slot_num_inc = ((slot_config & UPDOWN) >> 29) ? 1 : -1;

	/* Mask Global Interrupt Mask & Command Complete Interrupt Mask */
	tempdword = FUNC22(ctrl, SERR_INTR_ENABLE);
	FUNC4(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);
	tempdword |= (GLOBAL_INTR_MASK  | GLOBAL_SERR_MASK |
		      COMMAND_INTR_MASK | ARBITER_SERR_MASK);
	tempdword &= ~SERR_INTR_RSVDZ_MASK;
	FUNC23(ctrl, SERR_INTR_ENABLE, tempdword);
	tempdword = FUNC22(ctrl, SERR_INTR_ENABLE);
	FUNC4(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);

	/* Mask the MRL sensor SERR Mask of individual slot in
	 * Slot SERR-INT Mask & clear all the existing event if any
	 */
	for (hp_slot = 0; hp_slot < ctrl->num_slots; hp_slot++) {
		slot_reg = FUNC22(ctrl, FUNC0(hp_slot));
		FUNC4(ctrl, "Default Logical Slot Register %d value %x\n",
			 hp_slot, slot_reg);
		slot_reg |= (PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			     BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			     CON_PFAULT_INTR_MASK   | MRL_CHANGE_SERR_MASK |
			     CON_PFAULT_SERR_MASK);
		slot_reg &= ~SLOT_REG_RSVDZ_MASK;
		FUNC23(ctrl, FUNC0(hp_slot), slot_reg);
	}

	if (shpchp_poll_mode) {
		/* Install interrupt polling timer. Start with 10 sec delay */
		FUNC7(&ctrl->poll_timer);
		FUNC24(ctrl, 10);
	} else {
		/* Installs the interrupt handler */
		rc = FUNC13(pdev);
		if (rc) {
			FUNC6(ctrl,
				  "Can't get msi for the hotplug controller\n");
			FUNC6(ctrl,
				  "Use INTx for the hotplug controller\n");
		}

		rc = FUNC19(ctrl->pci_dev->irq, shpc_isr, IRQF_SHARED,
				 MY_NAME, (void *)ctrl);
		FUNC4(ctrl, "request_irq %d for hpc%d (returns %d)\n",
			 ctrl->pci_dev->irq,
		    FUNC2(&shpchp_num_controllers), rc);
		if (rc) {
			FUNC5(ctrl, "Can't get irq %d for the hotplug "
				 "controller\n", ctrl->pci_dev->irq);
			goto abort_iounmap;
		}
	}
	FUNC4(ctrl, "HPC at %s irq=%x\n", FUNC15(pdev), pdev->irq);

	/*
	 * If this is the first controller to be initialized,
	 * initialize the shpchpd work queue
	 */
	if (FUNC1(1, &shpchp_num_controllers) == 1) {
		shpchp_wq = FUNC3("shpchpd");
		if (!shpchp_wq) {
			rc = -ENOMEM;
			goto abort_iounmap;
		}
	}

	/*
	 * Unmask all event interrupts of all slots
	 */
	for (hp_slot = 0; hp_slot < ctrl->num_slots; hp_slot++) {
		slot_reg = FUNC22(ctrl, FUNC0(hp_slot));
		FUNC4(ctrl, "Default Logical Slot Register %d value %x\n",
			 hp_slot, slot_reg);
		slot_reg &= ~(PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			      BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			      CON_PFAULT_INTR_MASK | SLOT_REG_RSVDZ_MASK);
		FUNC23(ctrl, FUNC0(hp_slot), slot_reg);
	}
	if (!shpchp_poll_mode) {
		/* Unmask all general input interrupts and SERR */
		tempdword = FUNC22(ctrl, SERR_INTR_ENABLE);
		tempdword &= ~(GLOBAL_INTR_MASK | COMMAND_INTR_MASK |
			       SERR_INTR_RSVDZ_MASK);
		FUNC23(ctrl, SERR_INTR_ENABLE, tempdword);
		tempdword = FUNC22(ctrl, SERR_INTR_ENABLE);
		FUNC4(ctrl, "SERR_INTR_ENABLE = %x\n", tempdword);
	}

	return 0;

	/* We end up here for the many possible ways to fail this API.  */
abort_iounmap:
	FUNC10(ctrl->creg);
abort:
	return rc;
}