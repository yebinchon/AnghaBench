#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  width; } ;
struct TYPE_4__ {scalar_t__ rev; TYPE_1__ pci; } ;
struct adapter {TYPE_2__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_CFG ; 
 int /*<<< orphan*/  A_PCIE_MODE ; 
 int /*<<< orphan*/  A_PCIE_PEX_CTRL0 ; 
 int /*<<< orphan*/  A_PCIE_PEX_CTRL1 ; 
 int /*<<< orphan*/  A_PCIE_PEX_ERR ; 
 int F_ENABLELINKDOWNRST ; 
 int F_ENABLELINKDWNDRST ; 
 int F_PCIE_CLIDECEN ; 
 int F_PCIE_DMASTOPEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int M_ACKLAT ; 
 unsigned int M_REPLAYLMT ; 
 unsigned int M_T3A_ACKLAT ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_PAYLOAD ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct adapter *adap)
{
	static const u16 ack_lat[4][6] = {
		{237, 416, 559, 1071, 2095, 4143},
		{128, 217, 289, 545, 1057, 2081},
		{73, 118, 154, 282, 538, 1050},
		{67, 107, 86, 150, 278, 534}
	};
	static const u16 rpl_tmr[4][6] = {
		{711, 1248, 1677, 3213, 6285, 12429},
		{384, 651, 867, 1635, 3171, 6243},
		{219, 354, 462, 846, 1614, 3150},
		{201, 321, 258, 450, 834, 1602}
	};

	u16 val, devid;
	unsigned int log2_width, pldsize;
	unsigned int fst_trn_rx, fst_trn_tx, acklat, rpllmt;

	FUNC7(adap->pdev, PCI_EXP_DEVCTL, &val);
	pldsize = (val & PCI_EXP_DEVCTL_PAYLOAD) >> 5;

	FUNC6(adap->pdev, 0x2, &devid);
	if (devid == 0x37) {
		FUNC8(adap->pdev, PCI_EXP_DEVCTL,
					   val & ~PCI_EXP_DEVCTL_READRQ &
					   ~PCI_EXP_DEVCTL_PAYLOAD);
		pldsize = 0;
	}

	FUNC7(adap->pdev, PCI_EXP_LNKCTL, &val);

	fst_trn_tx = FUNC0(FUNC9(adap, A_PCIE_PEX_CTRL0));
	fst_trn_rx = adap->params.rev == 0 ? fst_trn_tx :
	    FUNC1(FUNC9(adap, A_PCIE_MODE));
	log2_width = FUNC5(adap->params.pci.width) - 1;
	acklat = ack_lat[log2_width][pldsize];
	if (val & 1)		/* check LOsEnable */
		acklat += fst_trn_tx * 4;
	rpllmt = rpl_tmr[log2_width][pldsize] + fst_trn_rx * 4;

	if (adap->params.rev == 0)
		FUNC10(adap, A_PCIE_PEX_CTRL1,
				 FUNC4(M_T3A_ACKLAT),
				 FUNC4(acklat));
	else
		FUNC10(adap, A_PCIE_PEX_CTRL1, FUNC2(M_ACKLAT),
				 FUNC2(acklat));

	FUNC10(adap, A_PCIE_PEX_CTRL0, FUNC3(M_REPLAYLMT),
			 FUNC3(rpllmt));

	FUNC11(adap, A_PCIE_PEX_ERR, 0xffffffff);
	FUNC10(adap, A_PCIE_CFG, 0,
			 F_ENABLELINKDWNDRST | F_ENABLELINKDOWNRST |
			 F_PCIE_DMASTOPEN | F_PCIE_CLIDECEN);
}