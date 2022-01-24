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
typedef  int u16 ;
struct lcnphy_txgains {int dummy; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LCNPHY_TX_PWR_CTRL_OFF ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  RADIO_2064_REG007 ; 
 int /*<<< orphan*/  RADIO_2064_REG0FF ; 
 int /*<<< orphan*/  RADIO_2064_REG112 ; 
 int /*<<< orphan*/  RADIO_2064_REG11F ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct brcms_phy*,int) ; 
 int FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*) ; 
 int FUNC16 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(struct brcms_phy_pub *ppi)
{
	bool suspend, tx_gain_override_old;
	struct lcnphy_txgains old_gains;
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	u16 idleTssi, idleTssi0_2C, idleTssi0_OB, idleTssi0_regvalue_OB,
	    idleTssi0_regvalue_2C;
	u16 SAVE_txpwrctrl = FUNC10(pi);
	u16 SAVE_lpfgain = FUNC5(pi, RADIO_2064_REG112);
	u16 SAVE_jtag_bb_afe_switch =
		FUNC5(pi, RADIO_2064_REG007) & 1;
	u16 SAVE_jtag_auxpga = FUNC5(pi, RADIO_2064_REG0FF) & 0x10;
	u16 SAVE_iqadc_aux_en = FUNC5(pi, RADIO_2064_REG11F) & 4;
	idleTssi = FUNC4(pi, 0x4ab);
	suspend = (0 == (FUNC1(pi->d11core, FUNC0(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend)
		FUNC7(pi->sh->physhim);
	FUNC14(pi, LCNPHY_TX_PWR_CTRL_OFF);

	tx_gain_override_old = FUNC16(pi);
	FUNC9(pi, &old_gains);

	FUNC8(pi);
	FUNC13(pi, 127);
	FUNC18(pi, RADIO_2064_REG112, 0x6);
	FUNC3(pi, RADIO_2064_REG007, 0x1, 1);
	FUNC3(pi, RADIO_2064_REG0FF, 0x10, 1 << 4);
	FUNC3(pi, RADIO_2064_REG11F, 0x4, 1 << 2);
	FUNC15(pi);
	FUNC17(pi, true, OFF);
	idleTssi = ((FUNC4(pi, 0x4ab) & (0x1ff << 0))
		    >> 0);

	idleTssi0_2C = ((FUNC4(pi, 0x63e) & (0x1ff << 0))
			>> 0);

	if (idleTssi0_2C >= 256)
		idleTssi0_OB = idleTssi0_2C - 256;
	else
		idleTssi0_OB = idleTssi0_2C + 256;

	idleTssi0_regvalue_OB = idleTssi0_OB;
	if (idleTssi0_regvalue_OB >= 256)
		idleTssi0_regvalue_2C = idleTssi0_regvalue_OB - 256;
	else
		idleTssi0_regvalue_2C = idleTssi0_regvalue_OB + 256;
	FUNC2(pi, 0x4a6, (0x1ff << 0), (idleTssi0_regvalue_2C) << 0);

	FUNC2(pi, 0x44c, (0x1 << 12), (0) << 12);

	FUNC12(pi, tx_gain_override_old);
	FUNC11(pi, &old_gains);
	FUNC14(pi, SAVE_txpwrctrl);

	FUNC18(pi, RADIO_2064_REG112, SAVE_lpfgain);
	FUNC3(pi, RADIO_2064_REG007, 0x1, SAVE_jtag_bb_afe_switch);
	FUNC3(pi, RADIO_2064_REG0FF, 0x10, SAVE_jtag_auxpga);
	FUNC3(pi, RADIO_2064_REG11F, 0x4, SAVE_iqadc_aux_en);
	FUNC3(pi, RADIO_2064_REG112, 0x80, 1 << 7);
	if (!suspend)
		FUNC6(pi->sh->physhim);
}