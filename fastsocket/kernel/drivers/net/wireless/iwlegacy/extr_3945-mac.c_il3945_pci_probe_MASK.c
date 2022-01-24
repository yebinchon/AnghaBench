#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {scalar_t__ driver_data; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {int irq; TYPE_6__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  rfkill_poll; } ;
struct il_priv {unsigned long long hw_base; struct ieee80211_hw* hw; struct pci_dev* pci_dev; int /*<<< orphan*/ * workqueue; TYPE_2__ _3945; TYPE_1__* bands; int /*<<< orphan*/  lock; struct il_cfg* cfg; scalar_t__ eeprom; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  inta_mask; int /*<<< orphan*/ * debugfs_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  cmd_queue; } ;
struct il_cfg {int /*<<< orphan*/  name; } ;
struct il3945_eeprom {unsigned long long mac_address; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/ * hw_scan; } ;
struct TYPE_9__ {scalar_t__ disable_hw_scan; } ;
struct TYPE_7__ {int /*<<< orphan*/ * channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INI_SET_MASK ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_NEVO_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int HZ ; 
 size_t IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  IL39_CMD_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int PCIE_LINK_STATE_CLKPM ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,struct il_priv*) ; 
 struct ieee80211_hw* FUNC10 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  il3945_attribute_group ; 
 int /*<<< orphan*/  il3945_debugfs_ops ; 
 scalar_t__ FUNC12 (struct il_priv*) ; 
 int FUNC13 (struct il_priv*) ; 
 TYPE_4__ il3945_mac_ops ; 
 TYPE_3__ il3945_mod_params ; 
 int /*<<< orphan*/  il3945_ops ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*) ; 
 int FUNC16 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct il_priv*) ; 
 int FUNC18 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct il_priv*) ; 
 int FUNC21 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC22 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct il_priv*) ; 
 int /*<<< orphan*/  il_isr ; 
 int /*<<< orphan*/  FUNC25 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC26 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*) ; 
 scalar_t__ FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*) ; 
 unsigned long long FUNC33 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*) ; 
 int FUNC35 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC37 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC38 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct pci_dev*,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC40 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC41 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC43 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC49(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = 0;
	struct il_priv *il;
	struct ieee80211_hw *hw;
	struct il_cfg *cfg = (struct il_cfg *)(ent->driver_data);
	struct il3945_eeprom *eeprom;
	unsigned long flags;

	/***********************
	 * 1. Allocating HW data
	 * ********************/

	hw = FUNC10(sizeof(struct il_priv), &il3945_mac_ops);
	if (!hw) {
		err = -ENOMEM;
		goto out;
	}
	il = hw->priv;
	il->hw = hw;
	FUNC5(hw, &pdev->dev);

	il->cmd_queue = IL39_CMD_QUEUE_NUM;

	/*
	 * Disabling hardware scan means that mac80211 will perform scans
	 * "the hard way", rather than using device's scan.
	 */
	if (il3945_mod_params.disable_hw_scan) {
		FUNC1("Disabling hw_scan\n");
		il3945_mac_ops.hw_scan = NULL;
	}

	FUNC1("*** LOAD DRIVER ***\n");
	il->cfg = cfg;
	il->ops = &il3945_ops;
#ifdef CONFIG_IWLEGACY_DEBUGFS
	il->debugfs_ops = &il3945_debugfs_ops;
#endif
	il->pci_dev = pdev;
	il->inta_mask = CSR_INI_SET_MASK;

	/***************************
	 * 2. Initializing PCI bus
	 * *************************/
	FUNC29(pdev,
			       PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1 |
			       PCIE_LINK_STATE_CLKPM);

	if (FUNC31(pdev)) {
		err = -ENODEV;
		goto out_ieee80211_free_hw;
	}

	FUNC40(pdev);

	err = FUNC38(pdev, FUNC0(32));
	if (!err)
		err = FUNC37(pdev, FUNC0(32));
	if (err) {
		FUNC4("No suitable DMA available.\n");
		goto out_pci_disable_device;
	}

	FUNC39(pdev, il);
	err = FUNC35(pdev, DRV_NAME);
	if (err)
		goto out_pci_disable_device;

	/***********************
	 * 3. Read REV Register
	 * ********************/
	il->hw_base = FUNC33(pdev, 0);
	if (!il->hw_base) {
		err = -ENODEV;
		goto out_pci_release_regions;
	}

	FUNC1("pci_resource_len = 0x%08llx\n",
	       (unsigned long long)FUNC36(pdev, 0));
	FUNC1("pci_resource_base = %p\n", il->hw_base);

	/* We disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC41(pdev, 0x41, 0x00);

	/* these spin locks will be used in apm_init and EEPROM access
	 * we should init now
	 */
	FUNC44(&il->reg_lock);
	FUNC44(&il->lock);

	/*
	 * stop and reset the on-board processor just in case it is in a
	 * strange state ... like being left stranded by a primary kernel
	 * and this is now the kdump kernel trying to start up
	 */
	FUNC7(il, CSR_RESET, CSR_RESET_REG_FLAG_NEVO_RESET);

	/***********************
	 * 4. Read EEPROM
	 * ********************/

	/* Read the EEPROM */
	err = FUNC21(il);
	if (err) {
		FUNC2("Unable to init EEPROM\n");
		goto out_iounmap;
	}
	/* MAC Address location in EEPROM same for 3945/4965 */
	eeprom = (struct il3945_eeprom *)il->eeprom;
	FUNC1("MAC address: %pM\n", eeprom->mac_address);
	FUNC6(il->hw, eeprom->mac_address);

	/***********************
	 * 5. Setup HW Constants
	 * ********************/
	/* Device-specific setup */
	if (FUNC12(il)) {
		FUNC2("failed to set hw settings\n");
		goto out_eeprom_free;
	}

	/***********************
	 * 6. Setup il
	 * ********************/

	err = FUNC13(il);
	if (err) {
		FUNC2("initializing driver failed\n");
		goto out_unset_hw_params;
	}

	FUNC3("Detected Intel Wireless WiFi Link %s\n", il->cfg->name);

	/***********************
	 * 7. Setup Services
	 * ********************/

	FUNC45(&il->lock, flags);
	FUNC19(il);
	FUNC46(&il->lock, flags);

	FUNC32(il->pci_dev);

	err = FUNC43(il->pci_dev->irq, il_isr, IRQF_SHARED, DRV_NAME, il);
	if (err) {
		FUNC2("Error allocating IRQ %d\n", il->pci_dev->irq);
		goto out_disable_msi;
	}

	err = FUNC47(&pdev->dev.kobj, &il3945_attribute_group);
	if (err) {
		FUNC2("failed to create sysfs device attributes\n");
		goto out_release_irq;
	}

	FUNC26(il, &il->bands[IEEE80211_BAND_2GHZ].channels[5]);
	FUNC14(il);
	FUNC15(il);
	FUNC25(il);

	/*********************************
	 * 8. Setup and Register mac80211
	 * *******************************/

	FUNC22(il);

	err = FUNC16(il);
	if (err)
		goto out_remove_sysfs;

	err = FUNC18(il, DRV_NAME);
	if (err)
		FUNC2("failed to create debugfs files. Ignoring error: %d\n",
		       err);

	/* Start monitoring the killswitch */
	FUNC42(il->workqueue, &il->_3945.rfkill_poll, 2 * HZ);

	return 0;

out_remove_sysfs:
	FUNC8(il->workqueue);
	il->workqueue = NULL;
	FUNC48(&pdev->dev.kobj, &il3945_attribute_group);
out_release_irq:
	FUNC9(il->pci_dev->irq, il);
out_disable_msi:
	FUNC30(il->pci_dev);
	FUNC24(il);
	FUNC23(il);
out_unset_hw_params:
	FUNC17(il);
out_eeprom_free:
	FUNC20(il);
out_iounmap:
	FUNC27(il->hw_base);
out_pci_release_regions:
	FUNC34(pdev);
out_pci_disable_device:
	FUNC39(pdev, NULL);
	FUNC28(pdev);
out_ieee80211_free_hw:
	FUNC11(il->hw);
out:
	return err;
}