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
typedef  int u8 ;
struct il_priv {int /*<<< orphan*/  lock; TYPE_1__* pci_dev; scalar_t__ eeprom; } ;
struct il3945_eeprom {int sku_cap; int board_revision; int almgor_m_version; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_A ; 
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_B ; 
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BIT_3945_MB ; 
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BIT_3945_MM ; 
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE ; 
 int /*<<< orphan*/  CSR39_HW_IF_CONFIG_REG_BIT_SKU_MRC ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EEPROM_SKU_CAP_HW_RF_KILL_ENABLE ; 
 int EEPROM_SKU_CAP_OP_MODE_MRC ; 
 int EEPROM_SKU_CAP_SW_RF_KILL_ENABLE ; 
 int PCI_CFG_REV_ID_BIT_BASIC_SKU ; 
 int PCI_CFG_REV_ID_BIT_RTP ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct il_priv *il)
{
	struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;
	unsigned long flags;
	u8 rev_id = il->pci_dev->revision;

	FUNC4(&il->lock, flags);

	/* Determine HW type */
	FUNC0("HW Revision ID = 0x%X\n", rev_id);

	if (rev_id & PCI_CFG_REV_ID_BIT_RTP)
		FUNC0("RTP type\n");
	else if (rev_id & PCI_CFG_REV_ID_BIT_BASIC_SKU) {
		FUNC0("3945 RADIO-MB type\n");
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BIT_3945_MB);
	} else {
		FUNC0("3945 RADIO-MM type\n");
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BIT_3945_MM);
	}

	if (EEPROM_SKU_CAP_OP_MODE_MRC == eeprom->sku_cap) {
		FUNC0("SKU OP mode is mrc\n");
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BIT_SKU_MRC);
	} else
		FUNC0("SKU OP mode is basic\n");

	if ((eeprom->board_revision & 0xF0) == 0xD0) {
		FUNC0("3945ABG revision is 0x%X\n", eeprom->board_revision);
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE);
	} else {
		FUNC0("3945ABG revision is 0x%X\n", eeprom->board_revision);
		FUNC2(il, CSR_HW_IF_CONFIG_REG,
			     CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE);
	}

	if (eeprom->almgor_m_version <= 1) {
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_A);
		FUNC0("Card M type A version is 0x%X\n",
		       eeprom->almgor_m_version);
	} else {
		FUNC0("Card M type B version is 0x%X\n",
		       eeprom->almgor_m_version);
		FUNC3(il, CSR_HW_IF_CONFIG_REG,
			   CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_B);
	}
	FUNC5(&il->lock, flags);

	if (eeprom->sku_cap & EEPROM_SKU_CAP_SW_RF_KILL_ENABLE)
		FUNC1("SW RF KILL supported in EEPROM.\n");

	if (eeprom->sku_cap & EEPROM_SKU_CAP_HW_RF_KILL_ENABLE)
		FUNC1("HW RF KILL supported in EEPROM.\n");
}