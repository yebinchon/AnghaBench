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
struct txpwr_limits {int /*<<< orphan*/ * mcs_40_mimo; int /*<<< orphan*/ * mcs_40_stbc; int /*<<< orphan*/ * mcs_40_cdd; int /*<<< orphan*/ * mcs_40_siso; int /*<<< orphan*/ * mcs_20_mimo; int /*<<< orphan*/ * mcs_20_stbc; int /*<<< orphan*/ * mcs_20_cdd; int /*<<< orphan*/ * mcs_20_siso; int /*<<< orphan*/ * ofdm_40_cdd; int /*<<< orphan*/ * ofdm_40_siso; int /*<<< orphan*/ * ofdm_cdd; int /*<<< orphan*/ * ofdm; int /*<<< orphan*/ * cck; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; int /*<<< orphan*/ * tx_user_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMS_NUM_RATES_CCK ; 
 int /*<<< orphan*/  BRCMS_NUM_RATES_MCS_1_STREAM ; 
 int /*<<< orphan*/  BRCMS_NUM_RATES_MCS_2_STREAM ; 
 int /*<<< orphan*/  BRCMS_NUM_RATES_OFDM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 size_t TXP_FIRST_CCK ; 
 size_t TXP_FIRST_MCS_20_CDD ; 
 size_t TXP_FIRST_MCS_20_SDM ; 
 size_t TXP_FIRST_MCS_20_SISO ; 
 size_t TXP_FIRST_MCS_20_STBC ; 
 size_t TXP_FIRST_MCS_40_CDD ; 
 size_t TXP_FIRST_MCS_40_SDM ; 
 size_t TXP_FIRST_MCS_40_SISO ; 
 size_t TXP_FIRST_MCS_40_STBC ; 
 size_t TXP_FIRST_OFDM ; 
 size_t TXP_FIRST_OFDM_20_CDD ; 
 size_t TXP_FIRST_OFDM_40_CDD ; 
 size_t TXP_FIRST_OFDM_40_SISO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 

void FUNC7(struct brcms_phy_pub *ppi,
				struct txpwr_limits *txpwr)
{
	bool mac_enabled = false;
	struct brcms_phy *pi = (struct brcms_phy *) ppi;

	FUNC2(&pi->tx_user_target[TXP_FIRST_CCK],
	       &txpwr->cck[0], BRCMS_NUM_RATES_CCK);

	FUNC2(&pi->tx_user_target[TXP_FIRST_OFDM],
	       &txpwr->ofdm[0], BRCMS_NUM_RATES_OFDM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_OFDM_20_CDD],
	       &txpwr->ofdm_cdd[0], BRCMS_NUM_RATES_OFDM);

	FUNC2(&pi->tx_user_target[TXP_FIRST_OFDM_40_SISO],
	       &txpwr->ofdm_40_siso[0], BRCMS_NUM_RATES_OFDM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_OFDM_40_CDD],
	       &txpwr->ofdm_40_cdd[0], BRCMS_NUM_RATES_OFDM);

	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_20_SISO],
	       &txpwr->mcs_20_siso[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_20_CDD],
	       &txpwr->mcs_20_cdd[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_20_STBC],
	       &txpwr->mcs_20_stbc[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_20_SDM],
	       &txpwr->mcs_20_mimo[0], BRCMS_NUM_RATES_MCS_2_STREAM);

	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_40_SISO],
	       &txpwr->mcs_40_siso[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_40_CDD],
	       &txpwr->mcs_40_cdd[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_40_STBC],
	       &txpwr->mcs_40_stbc[0], BRCMS_NUM_RATES_MCS_1_STREAM);
	FUNC2(&pi->tx_user_target[TXP_FIRST_MCS_40_SDM],
	       &txpwr->mcs_40_mimo[0], BRCMS_NUM_RATES_MCS_2_STREAM);

	if (FUNC1(pi->d11core, FUNC0(maccontrol)) & MCTL_EN_MAC)
		mac_enabled = true;

	if (mac_enabled)
		FUNC4(pi->sh->physhim);

	FUNC6(pi);
	FUNC5(pi);

	if (mac_enabled)
		FUNC3(pi->sh->physhim);
}