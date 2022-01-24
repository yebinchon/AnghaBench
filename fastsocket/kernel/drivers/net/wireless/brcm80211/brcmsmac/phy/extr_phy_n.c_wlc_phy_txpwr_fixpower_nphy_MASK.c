#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {int extpagain; } ;
struct TYPE_9__ {int extpagain; } ;
struct TYPE_8__ {size_t phy_rev; size_t phy_corenum; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; TYPE_5__ srom_fem2g; TYPE_4__ srom_fem5g; int /*<<< orphan*/  radio_chanspec; TYPE_3__ pubpi; TYPE_2__* nphy_txpwrindex; TYPE_1__* sh; } ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_7__ {int index_internal; int index_internal_save; } ;
struct TYPE_6__ {int sromrev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NPHY_TBL_ID_CORE1TXPWRCTL ; 
 int NPHY_TBL_ID_CORE2TXPWRCTL ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (size_t,int) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 size_t PHY_CORE_0 ; 
 size_t PHY_CORE_1 ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
#define  WL_CHAN_FREQ_RANGE_2G 131 
#define  WL_CHAN_FREQ_RANGE_5GH 130 
#define  WL_CHAN_FREQ_RANGE_5GL 129 
#define  WL_CHAN_FREQ_RANGE_5GM 128 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int,int) ; 
 int* nphy_tpc_5GHz_txgain_HiPwrEPA ; 
 int* nphy_tpc_5GHz_txgain_rev3 ; 
 int* nphy_tpc_5GHz_txgain_rev4 ; 
 int* nphy_tpc_5GHz_txgain_rev5 ; 
 int* nphy_tpc_txgain ; 
 int* nphy_tpc_txgain_HiPwrEPA ; 
 int* nphy_tpc_txgain_rev3 ; 
 int FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int* FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int) ; 

void FUNC13(struct brcms_phy *pi)
{
	uint core;
	u32 txgain;
	u16 rad_gain, dac_gain, bbmult, m1m2;
	u8 txpi[2], chan_freq_range;
	s32 rfpwr_offset;

	if (pi->phyhang_avoid)
		FUNC9(pi, true);

	if (pi->sh->sromrev < 4) {
		txpi[0] = txpi[1] = 72;
	} else {

		chan_freq_range = FUNC7(pi, 0);
		switch (chan_freq_range) {
		case WL_CHAN_FREQ_RANGE_2G:
		case WL_CHAN_FREQ_RANGE_5GL:
		case WL_CHAN_FREQ_RANGE_5GM:
		case WL_CHAN_FREQ_RANGE_5GH:
			txpi[0] = 0;
			txpi[1] = 0;
			break;
		default:
			txpi[0] = txpi[1] = 91;
			break;
		}
	}

	if (FUNC1(pi->pubpi.phy_rev, 7))
		txpi[0] = txpi[1] = 30;
	else if (FUNC1(pi->pubpi.phy_rev, 3))
		txpi[0] = txpi[1] = 40;

	if (FUNC3(pi->pubpi.phy_rev, 7)) {

		if ((txpi[0] < 40) || (txpi[0] > 100) ||
		    (txpi[1] < 40) || (txpi[1] > 100))
			txpi[0] = txpi[1] = 91;
	}

	pi->nphy_txpwrindex[PHY_CORE_0].index_internal = txpi[0];
	pi->nphy_txpwrindex[PHY_CORE_1].index_internal = txpi[1];
	pi->nphy_txpwrindex[PHY_CORE_0].index_internal_save = txpi[0];
	pi->nphy_txpwrindex[PHY_CORE_1].index_internal_save = txpi[1];

	for (core = 0; core < pi->pubpi.phy_corenum; core++) {
		uint phyrev = pi->pubpi.phy_rev;

		if (FUNC1(phyrev, 3)) {
			if (FUNC4(pi)) {
				u32 *tx_gaintbl =
					FUNC8(pi);
				txgain = tx_gaintbl[txpi[core]];
			} else {
				if (FUNC0(pi->radio_chanspec)) {
					if (FUNC2(phyrev, 3)) {
						txgain =
						      nphy_tpc_5GHz_txgain_rev3
								   [txpi[core]];
					} else if (FUNC2(phyrev, 4)) {
						txgain = (
						  pi->srom_fem5g.extpagain ==
						  3) ?
						  nphy_tpc_5GHz_txgain_HiPwrEPA
						 [txpi[core]] :
						 nphy_tpc_5GHz_txgain_rev4
						 [txpi[core]];
					} else {
						txgain =
						      nphy_tpc_5GHz_txgain_rev5
								   [txpi[core]];
					}
				} else {
					if (FUNC1(phyrev, 5) &&
					    (pi->srom_fem2g.extpagain == 3)) {
						txgain =
							nphy_tpc_txgain_HiPwrEPA
							[txpi[core]];
					} else {
						txgain = nphy_tpc_txgain_rev3
							 [txpi[core]];
					}
				}
			}
		} else {
			txgain = nphy_tpc_txgain[txpi[core]];
		}

		if (FUNC1(phyrev, 3))
			rad_gain = (txgain >> 16) & ((1 << (32 - 16 + 1)) - 1);
		else
			rad_gain = (txgain >> 16) & ((1 << (28 - 16 + 1)) - 1);

		if (FUNC1(phyrev, 7))
			dac_gain = (txgain >> 8) & ((1 << (10 - 8 + 1)) - 1);
		else
			dac_gain = (txgain >> 8) & ((1 << (13 - 8 + 1)) - 1);

		bbmult = (txgain >> 0) & ((1 << (7 - 0 + 1)) - 1);

		if (FUNC1(phyrev, 3))
			FUNC6(pi, ((core == PHY_CORE_0) ? 0x8f :
					 0xa5), (0x1 << 8), (0x1 << 8));
		else
			FUNC6(pi, 0xa5, (0x1 << 14), (0x1 << 14));

		FUNC12(pi, (core == PHY_CORE_0) ? 0xaa : 0xab, dac_gain);

		FUNC11(pi, 7, 1, (0x110 + core), 16,
					 &rad_gain);

		FUNC10(pi, 15, 1, 87, 16, &m1m2);
		m1m2 &= ((core == PHY_CORE_0) ? 0x00ff : 0xff00);
		m1m2 |= ((core == PHY_CORE_0) ? (bbmult << 8) : (bbmult << 0));
		FUNC11(pi, 15, 1, 87, 16, &m1m2);

		if (FUNC4(pi)) {
			FUNC10(pi,
						(core ==
						 PHY_CORE_0 ?
						 NPHY_TBL_ID_CORE1TXPWRCTL :
						 NPHY_TBL_ID_CORE2TXPWRCTL), 1,
						576 + txpi[core], 32,
						&rfpwr_offset);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x297 :
				    0x29b, (0x1ff << 4),
				    ((s16) rfpwr_offset) << 4);

			FUNC6(pi, (core == PHY_CORE_0) ? 0x297 :
				    0x29b, (0x1 << 2), (1) << 2);

		}
	}

	FUNC5(pi, 0xbf, (u16) (~(0x1f << 0)));

	if (pi->phyhang_avoid)
		FUNC9(pi, false);
}