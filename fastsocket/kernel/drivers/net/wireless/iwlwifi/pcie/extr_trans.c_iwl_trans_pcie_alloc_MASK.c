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
typedef  int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int subsystem_device; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct iwl_trans_pcie {int /*<<< orphan*/  inta_mask; int /*<<< orphan*/  wait_command_queue; struct pci_dev* pci_dev; int /*<<< orphan*/  hw_base; int /*<<< orphan*/  ucode_write_waitq; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  irq_lock; struct iwl_trans* trans; } ;
struct iwl_trans {int hw_id; int /*<<< orphan*/  dev_cmd_pool; scalar_t__ dev_cmd_headroom; int /*<<< orphan*/  dev_cmd_pool_name; int /*<<< orphan*/ * dev; int /*<<< orphan*/  hw_id_str; int /*<<< orphan*/  hw_rev; struct iwl_cfg const* cfg; int /*<<< orphan*/ * ops; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cfg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_REV ; 
 int /*<<< orphan*/  CSR_INI_SET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int PCIE_LINK_STATE_CLKPM ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
 int /*<<< orphan*/  PCI_CFG_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  iwl_pcie_irq_handler ; 
 int /*<<< orphan*/  iwl_pcie_isr_ict ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct iwl_trans* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 scalar_t__ FUNC16 (struct pci_dev*) ; 
 int FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct iwl_trans*) ; 
 int /*<<< orphan*/  trans_ops_pcie ; 

struct iwl_trans *FUNC31(struct pci_dev *pdev,
				       const struct pci_device_id *ent,
				       const struct iwl_cfg *cfg)
{
	struct iwl_trans_pcie *trans_pcie;
	struct iwl_trans *trans;
	u16 pci_cmd;
	int err;

	trans = FUNC12(sizeof(struct iwl_trans) +
			sizeof(struct iwl_trans_pcie), GFP_KERNEL);

	if (!trans)
		return NULL;

	trans_pcie = FUNC2(trans);

	trans->ops = &trans_ops_pcie;
	trans->cfg = cfg;
	FUNC30(trans);
	trans_pcie->trans = trans;
	FUNC29(&trans_pcie->irq_lock);
	FUNC29(&trans_pcie->reg_lock);
	FUNC5(&trans_pcie->ucode_write_waitq);

	if (FUNC16(pdev)) {
		err = -ENODEV;
		goto out_no_pci;
	}

	/* W/A - seems to solve weird behavior. We need to remove this if we
	 * don't want to stay in L1 all the time. This wastes a lot of power */
	FUNC14(pdev, PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1 |
			       PCIE_LINK_STATE_CLKPM);

	FUNC24(pdev);

	err = FUNC23(pdev, FUNC0(36));
	if (!err)
		err = FUNC22(pdev, FUNC0(36));
	if (err) {
		err = FUNC23(pdev, FUNC0(32));
		if (!err)
			err = FUNC22(pdev,
							  FUNC0(32));
		/* both attempts failed: */
		if (err) {
			FUNC3(&pdev->dev, "No suitable DMA available\n");
			goto out_pci_disable_device;
		}
	}

	err = FUNC21(pdev, DRV_NAME);
	if (err) {
		FUNC3(&pdev->dev, "pci_request_regions failed\n");
		goto out_pci_disable_device;
	}

	trans_pcie->hw_base = FUNC18(pdev, 0);
	if (!trans_pcie->hw_base) {
		FUNC3(&pdev->dev, "pci_ioremap_bar failed\n");
		err = -ENODEV;
		goto out_pci_release_regions;
	}

	/* We disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC25(pdev, PCI_CFG_RETRY_TIMEOUT, 0x00);

	err = FUNC17(pdev);
	if (err) {
		FUNC3(&pdev->dev, "pci_enable_msi failed(0X%x)\n", err);
		/* enable rfkill interrupt: hw bug w/a */
		FUNC19(pdev, PCI_COMMAND, &pci_cmd);
		if (pci_cmd & PCI_COMMAND_INTX_DISABLE) {
			pci_cmd &= ~PCI_COMMAND_INTX_DISABLE;
			FUNC26(pdev, PCI_COMMAND, pci_cmd);
		}
	}

	trans->dev = &pdev->dev;
	trans_pcie->pci_dev = pdev;
	trans->hw_rev = FUNC8(trans, CSR_HW_REV);
	trans->hw_id = (pdev->device << 16) + pdev->subsystem_device;
	FUNC28(trans->hw_id_str, sizeof(trans->hw_id_str),
		 "PCI ID: 0x%04X:0x%04X", pdev->device, pdev->subsystem_device);

	/* Initialize the wait queue for commands */
	FUNC5(&trans_pcie->wait_command_queue);

	FUNC28(trans->dev_cmd_pool_name, sizeof(trans->dev_cmd_pool_name),
		 "iwl_cmd_pool:%s", FUNC4(trans->dev));

	trans->dev_cmd_headroom = 0;
	trans->dev_cmd_pool =
		FUNC10(trans->dev_cmd_pool_name,
				  sizeof(struct iwl_device_cmd)
				  + trans->dev_cmd_headroom,
				  sizeof(void *),
				  SLAB_HWCACHE_ALIGN,
				  NULL);

	if (!trans->dev_cmd_pool)
		goto out_pci_disable_msi;

	trans_pcie->inta_mask = CSR_INI_SET_MASK;

	if (FUNC6(trans))
		goto out_free_cmd_pool;

	if (FUNC27(pdev->irq, iwl_pcie_isr_ict,
				 iwl_pcie_irq_handler,
				 IRQF_SHARED, DRV_NAME, trans)) {
		FUNC1(trans, "Error allocating IRQ %d\n", pdev->irq);
		goto out_free_ict;
	}

	return trans;

out_free_ict:
	FUNC7(trans);
out_free_cmd_pool:
	FUNC11(trans->dev_cmd_pool);
out_pci_disable_msi:
	FUNC15(pdev);
out_pci_release_regions:
	FUNC20(pdev);
out_pci_disable_device:
	FUNC13(pdev);
out_no_pci:
	FUNC9(trans);
	return NULL;
}