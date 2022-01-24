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
typedef  int /*<<< orphan*/  uint ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct nphy_txgains {int* ipa; int* pad; int* pga; int* txgm; int* txlpf; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ nphy_txpwrctrl; TYPE_1__ pubpi; scalar_t__ phyhang_avoid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NPHY_TBL_ID_RFSEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_TPC_HW_OFF ; 
 int* FUNC1 (struct brcms_phy*) ; 
 int* nphy_tpc_txgain ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 

struct nphy_txgains FUNC5(struct brcms_phy *pi)
{
	u16 base_idx[2], curr_gain[2];
	u8 core_no;
	struct nphy_txgains target_gain;
	u32 *tx_pwrctrl_tbl = NULL;

	if (pi->nphy_txpwrctrl == PHY_TPC_HW_OFF) {
		if (pi->phyhang_avoid)
			FUNC3(pi, true);

		FUNC4(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16,
					curr_gain);

		if (pi->phyhang_avoid)
			FUNC3(pi, false);

		for (core_no = 0; core_no < 2; core_no++) {
			if (FUNC0(pi->pubpi.phy_rev, 7)) {
				target_gain.ipa[core_no] =
					curr_gain[core_no] & 0x0007;
				target_gain.pad[core_no] =
					((curr_gain[core_no] & 0x00F8) >> 3);
				target_gain.pga[core_no] =
					((curr_gain[core_no] & 0x0F00) >> 8);
				target_gain.txgm[core_no] =
					((curr_gain[core_no] & 0x7000) >> 12);
				target_gain.txlpf[core_no] =
					((curr_gain[core_no] & 0x8000) >> 15);
			} else if (FUNC0(pi->pubpi.phy_rev, 3)) {
				target_gain.ipa[core_no] =
					curr_gain[core_no] & 0x000F;
				target_gain.pad[core_no] =
					((curr_gain[core_no] & 0x00F0) >> 4);
				target_gain.pga[core_no] =
					((curr_gain[core_no] & 0x0F00) >> 8);
				target_gain.txgm[core_no] =
					((curr_gain[core_no] & 0x7000) >> 12);
			} else {
				target_gain.ipa[core_no] =
					curr_gain[core_no] & 0x0003;
				target_gain.pad[core_no] =
					((curr_gain[core_no] & 0x000C) >> 2);
				target_gain.pga[core_no] =
					((curr_gain[core_no] & 0x0070) >> 4);
				target_gain.txgm[core_no] =
					((curr_gain[core_no] & 0x0380) >> 7);
			}
		}
	} else {
		uint phyrev = pi->pubpi.phy_rev;

		base_idx[0] = (FUNC2(pi, 0x1ed) >> 8) & 0x7f;
		base_idx[1] = (FUNC2(pi, 0x1ee) >> 8) & 0x7f;
		for (core_no = 0; core_no < 2; core_no++) {
			if (FUNC0(phyrev, 3)) {
				tx_pwrctrl_tbl =
					FUNC1(pi);
				if (FUNC0(phyrev, 7)) {
					target_gain.ipa[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 16) & 0x7;
					target_gain.pad[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 19) & 0x1f;
					target_gain.pga[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 24) & 0xf;
					target_gain.txgm[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 28) & 0x7;
					target_gain.txlpf[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 31) & 0x1;
				} else {
					target_gain.ipa[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 16) & 0xf;
					target_gain.pad[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 20) & 0xf;
					target_gain.pga[core_no] =
						(tx_pwrctrl_tbl
						 [base_idx[core_no]]
						 >> 24) & 0xf;
					target_gain.txgm[core_no] =
						(tx_pwrctrl_tbl
						[base_idx[core_no]]
						 >> 28) & 0x7;
				}
			} else {
				target_gain.ipa[core_no] =
					(nphy_tpc_txgain[base_idx[core_no]] >>
					 16) & 0x3;
				target_gain.pad[core_no] =
					(nphy_tpc_txgain[base_idx[core_no]] >>
					 18) & 0x3;
				target_gain.pga[core_no] =
					(nphy_tpc_txgain[base_idx[core_no]] >>
					 20) & 0x7;
				target_gain.txgm[core_no] =
					(nphy_tpc_txgain[base_idx[core_no]] >>
					 23) & 0x7;
			}
		}
	}

	return target_gain;
}