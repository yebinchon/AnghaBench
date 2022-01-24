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
struct phytbl_info {int tbl_width; int* tbl_ptr; int tbl_len; scalar_t__ tbl_offset; int /*<<< orphan*/  tbl_id; } ;
struct lcnphy_txgains {int gm_gain; int pga_gain; int pad_gain; scalar_t__ dac_gain; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int* txpa_2g; TYPE_1__* sh; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  hwpwrctrl_capable; int /*<<< orphan*/  d11core; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCNPHY_TBL_ID_TXPWRCTL ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_HW ; 
 int /*<<< orphan*/  LCN_TARGET_PWR ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  TEMPSENSE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,struct phytbl_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC16(struct brcms_phy_pub *ppi)
{
	struct lcnphy_txgains tx_gains;
	u8 bbmult;
	struct phytbl_info tab;
	s32 a1, b0, b1;
	s32 tssi, pwr, maxtargetpwr, mintargetpwr;
	bool suspend;
	struct brcms_phy *pi = (struct brcms_phy *) ppi;

	suspend = (0 == (FUNC2(pi->d11core, FUNC1(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend)
		FUNC5(pi->sh->physhim);

	if (!pi->hwpwrctrl_capable) {
		if (FUNC0(pi->radio_chanspec)) {
			tx_gains.gm_gain = 4;
			tx_gains.pga_gain = 12;
			tx_gains.pad_gain = 12;
			tx_gains.dac_gain = 0;

			bbmult = 150;
		} else {
			tx_gains.gm_gain = 7;
			tx_gains.pga_gain = 15;
			tx_gains.pad_gain = 14;
			tx_gains.dac_gain = 0;

			bbmult = 150;
		}
		FUNC10(pi, &tx_gains);
		FUNC8(pi, bbmult);
		FUNC13(pi, TEMPSENSE);
	} else {

		FUNC7(ppi);

		FUNC6(pi);

		b0 = pi->txpa_2g[0];
		b1 = pi->txpa_2g[1];
		a1 = pi->txpa_2g[2];
		maxtargetpwr = FUNC12(10, a1, b0, b1);
		mintargetpwr = FUNC12(125, a1, b0, b1);

		tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
		tab.tbl_width = 32;
		tab.tbl_ptr = &pwr;
		tab.tbl_len = 1;
		tab.tbl_offset = 0;
		for (tssi = 0; tssi < 128; tssi++) {
			pwr = FUNC12(tssi, a1, b0, b1);

			pwr = (pwr < mintargetpwr) ? mintargetpwr : pwr;
			FUNC14(pi, &tab);
			tab.tbl_offset++;
		}

		FUNC3(pi, 0x410, (0x1 << 7), (0) << 7);

		FUNC15(pi, 0x4a8, 10);

		FUNC9(pi, LCN_TARGET_PWR);

		FUNC11(pi, LCNPHY_TX_PWR_CTRL_HW);
	}
	if (!suspend)
		FUNC4(pi->sh->physhim);
}