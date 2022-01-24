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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct atl1c_hw {TYPE_1__* adapter; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int ATL1C_PCIE_L0S_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int LTSSM_ID_EN_WRO ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ PCI_ERR_UNCOR_SEVER ; 
 int PCI_ERR_UNC_DLP ; 
 int PCI_ERR_UNC_FCP ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_CED ; 
 int PCI_EXP_DEVSTA_FED ; 
 int PCI_EXP_DEVSTA_NFED ; 
 int PCI_EXP_DEVSTA_URD ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int /*<<< orphan*/  REG_LTSSM_ID_CTRL ; 
 int /*<<< orphan*/  REG_WOL_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct atl1c_hw *hw, u32 flag)
{
	u32 data;
	u32 pci_cmd;
	struct pci_dev *pdev = hw->adapter->pdev;
	int pos;

	FUNC0(hw, PCI_COMMAND, &pci_cmd);
	pci_cmd &= ~PCI_COMMAND_INTX_DISABLE;
	pci_cmd |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER |
		PCI_COMMAND_IO);
	FUNC1(hw, PCI_COMMAND, pci_cmd);

	/*
	 * Clear any PowerSaveing Settings
	 */
	FUNC5(pdev, PCI_D3hot, 0);
	FUNC5(pdev, PCI_D3cold, 0);
	/* wol sts read-clear */
	FUNC0(hw, REG_WOL_CTRL, &data);
	FUNC1(hw, REG_WOL_CTRL, 0);

	/*
	 * Mask some pcie error bits
	 */
	pos = FUNC6(pdev, PCI_EXT_CAP_ID_ERR);
	FUNC7(pdev, pos + PCI_ERR_UNCOR_SEVER, &data);
	data &= ~(PCI_ERR_UNC_DLP | PCI_ERR_UNC_FCP);
	FUNC8(pdev, pos + PCI_ERR_UNCOR_SEVER, data);
	/* clear error status */
	FUNC9(pdev, PCI_EXP_DEVSTA,
			PCI_EXP_DEVSTA_NFED |
			PCI_EXP_DEVSTA_FED |
			PCI_EXP_DEVSTA_CED |
			PCI_EXP_DEVSTA_URD);

	FUNC0(hw, REG_LTSSM_ID_CTRL, &data);
	data &= ~LTSSM_ID_EN_WRO;
	FUNC1(hw, REG_LTSSM_ID_CTRL, data);

	FUNC3(hw);
	if (flag & ATL1C_PCIE_L0S_L1_DISABLE)
		FUNC2(hw);

	FUNC4(5);
}