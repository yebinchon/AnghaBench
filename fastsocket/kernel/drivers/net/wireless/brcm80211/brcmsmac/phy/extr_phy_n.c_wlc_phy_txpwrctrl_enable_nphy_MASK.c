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
typedef  size_t uint ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {size_t phy_corenum; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int nphy_txpwrctrl; int* nphy_txpwr_idx; scalar_t__ bw; int* adj_pwr_tbl_nphy; scalar_t__ phyhang_avoid; TYPE_2__* sh; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;
struct TYPE_4__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCM_BAND_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MHF1 ; 
 int MHF1_IQSWAP_WAR ; 
 int NPHY_TBL_ID_CORE1TXPWRCTL ; 
 int NPHY_TBL_ID_CORE2TXPWRCTL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 scalar_t__ FUNC5 (struct brcms_phy*) ; 
#define  PHY_TPC_HW_OFF 129 
#define  PHY_TPC_HW_ON 128 
 scalar_t__ WL_CHANSPEC_BW_40 ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int,int,int,int*) ; 
 int FUNC12 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int) ; 
 scalar_t__ FUNC14 (struct brcms_phy*) ; 

void FUNC15(struct brcms_phy *pi, u8 ctrl_type)
{
	u16 mask = 0, val = 0, ishw = 0;
	u8 ctr;
	uint core;
	u32 tbl_offset;
	u32 tbl_len;
	u16 regval[84];

	if (pi->phyhang_avoid)
		FUNC10(pi, true);

	switch (ctrl_type) {
	case PHY_TPC_HW_OFF:
	case PHY_TPC_HW_ON:
		pi->nphy_txpwrctrl = ctrl_type;
		break;
	default:
		break;
	}

	if (ctrl_type == PHY_TPC_HW_OFF) {
		if (FUNC1(pi->pubpi.phy_rev, 3)) {

			if (FUNC14(pi)) {
				for (core = 0; core < pi->pubpi.phy_corenum;
				     core++)
					pi->nphy_txpwr_idx[core] =
						FUNC12(
							pi,
							(u8) core);
			}

		}

		tbl_len = 84;
		tbl_offset = 64;
		for (ctr = 0; ctr < tbl_len; ctr++)
			regval[ctr] = 0;
		FUNC11(pi, 26, tbl_len, tbl_offset, 16,
					 regval);
		FUNC11(pi, 27, tbl_len, tbl_offset, 16,
					 regval);

		if (FUNC1(pi->pubpi.phy_rev, 3))
			FUNC6(pi, 0x1e7,
				    (u16) (~((0x1 << 15) |
					     (0x1 << 14) | (0x1 << 13))));
		else
			FUNC6(pi, 0x1e7,
				    (u16) (~((0x1 << 14) | (0x1 << 13))));

		if (FUNC1(pi->pubpi.phy_rev, 3)) {
			FUNC8(pi, 0x8f, (0x1 << 8));
			FUNC8(pi, 0xa5, (0x1 << 8));
		} else {
			FUNC8(pi, 0xa5, (0x1 << 14));
		}

		if (FUNC3(pi->pubpi.phy_rev, 2))
			FUNC7(pi, 0xdc, 0x00ff, 0x53);
		else if (FUNC4(pi->pubpi.phy_rev, 2))
			FUNC7(pi, 0xdc, 0x00ff, 0x5a);

		if (FUNC4(pi->pubpi.phy_rev, 2) &&
		    pi->bw == WL_CHANSPEC_BW_40)
			FUNC9(pi->sh->physhim, MHF1, MHF1_IQSWAP_WAR,
				       MHF1_IQSWAP_WAR, BRCM_BAND_ALL);

	} else {

		FUNC11(pi, NPHY_TBL_ID_CORE1TXPWRCTL, 84, 64,
					 8, pi->adj_pwr_tbl_nphy);
		FUNC11(pi, NPHY_TBL_ID_CORE2TXPWRCTL, 84, 64,
					 8, pi->adj_pwr_tbl_nphy);

		ishw = (ctrl_type == PHY_TPC_HW_ON) ? 0x1 : 0x0;
		mask = (0x1 << 14) | (0x1 << 13);
		val = (ishw << 14) | (ishw << 13);

		if (FUNC1(pi->pubpi.phy_rev, 3)) {
			mask |= (0x1 << 15);
			val |= (ishw << 15);
		}

		FUNC7(pi, 0x1e7, mask, val);

		if (FUNC0(pi->radio_chanspec)) {
			if (FUNC1(pi->pubpi.phy_rev, 7)) {
				FUNC7(pi, 0x1e7, (0x7f << 0), 0x32);
				FUNC7(pi, 0x222, (0xff << 0), 0x32);
			} else {
				FUNC7(pi, 0x1e7, (0x7f << 0), 0x64);
				if (FUNC2(pi->pubpi.phy_rev, 1))
					FUNC7(pi, 0x222,
						    (0xff << 0), 0x64);
			}
		}

		if (FUNC1(pi->pubpi.phy_rev, 3)) {
			if ((pi->nphy_txpwr_idx[0] != 128)
			    && (pi->nphy_txpwr_idx[1] != 128))
				FUNC13(pi,
							       pi->
							       nphy_txpwr_idx
							       [0],
							       pi->
							       nphy_txpwr_idx
							       [1]);
		}

		if (FUNC1(pi->pubpi.phy_rev, 3)) {
			FUNC6(pi, 0x8f, ~(0x1 << 8));
			FUNC6(pi, 0xa5, ~(0x1 << 8));
		} else {
			FUNC6(pi, 0xa5, ~(0x1 << 14));
		}

		if (FUNC3(pi->pubpi.phy_rev, 2))
			FUNC7(pi, 0xdc, 0x00ff, 0x3b);
		else if (FUNC4(pi->pubpi.phy_rev, 2))
			FUNC7(pi, 0xdc, 0x00ff, 0x40);

		if (FUNC4(pi->pubpi.phy_rev, 2) &&
		    pi->bw == WL_CHANSPEC_BW_40)
			FUNC9(pi->sh->physhim, MHF1, MHF1_IQSWAP_WAR,
				       0x0, BRCM_BAND_ALL);

		if (FUNC5(pi)) {
			FUNC7(pi, (0 == PHY_CORE_0) ? 0x297 :
				    0x29b, (0x1 << 2), (0) << 2);

			FUNC7(pi, (1 == PHY_CORE_0) ? 0x297 :
				    0x29b, (0x1 << 2), (0) << 2);

		}

	}

	if (pi->phyhang_avoid)
		FUNC10(pi, false);
}