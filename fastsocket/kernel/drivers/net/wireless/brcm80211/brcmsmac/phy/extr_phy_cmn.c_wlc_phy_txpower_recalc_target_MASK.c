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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {void (* txpwrrecalc ) (struct brcms_phy*) ;} ;
struct brcms_phy {int mcs40_po; int mcs20_po; size_t* tx_user_target; size_t* txpwr_limit; int txpwr_percent; size_t* txpwr_env_limit; size_t* tx_power_offset; size_t tx_power_max; size_t tx_power_min; size_t tx_power_max_rate_ind; size_t* tx_power_target; TYPE_1__ pi_fptr; int /*<<< orphan*/  hwpwrctrl; scalar_t__ user_txpwr_at_rfport; scalar_t__ tx_srom_max_2g; scalar_t__* tx_srom_max_rate_2g; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 scalar_t__ FUNC5 (struct brcms_phy*) ; 
 int TXP_FIRST_SISO_MCS_20 ; 
 int TXP_LAST_OFDM ; 
 int TXP_LAST_SISO_MCS_20 ; 
 int TXP_NUM_RATES ; 
 scalar_t__ WL_CHANSPEC_CTL_SB_NONE ; 
 scalar_t__ WL_CHANSPEC_CTL_SB_UPPER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 (size_t,size_t) ; 
 void FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy_pub*,int /*<<< orphan*/ ,size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int) ; 
 scalar_t__ FUNC14 (struct brcms_phy*,int /*<<< orphan*/ ,int,size_t) ; 

void FUNC15(struct brcms_phy *pi)
{
	u8 maxtxpwr, mintxpwr, rate, pactrl;
	uint target_chan;
	u8 tx_pwr_target[TXP_NUM_RATES];
	u8 tx_pwr_max = 0;
	u8 tx_pwr_min = 255;
	u8 tx_pwr_max_rate_ind = 0;
	u8 max_num_rate;
	u8 start_rate = 0;
	u16 chspec;
	u32 band = FUNC0(pi->radio_chanspec);
	void (*txpwr_recalc_fn)(struct brcms_phy *) = NULL;

	chspec = pi->radio_chanspec;
	if (FUNC2(chspec) == WL_CHANSPEC_CTL_SB_NONE)
		target_chan = FUNC1(chspec);
	else if (FUNC2(chspec) == WL_CHANSPEC_CTL_SB_UPPER)
		target_chan = FUNC11(FUNC1(chspec));
	else
		target_chan = FUNC6(FUNC1(chspec));

	pactrl = 0;
	if (FUNC4(pi)) {
		u32 offset_mcs, i;

		if (FUNC3(pi->radio_chanspec)) {
			offset_mcs = pi->mcs40_po;
			for (i = TXP_FIRST_SISO_MCS_20;
			     i <= TXP_LAST_SISO_MCS_20; i++) {
				pi->tx_srom_max_rate_2g[i - 8] =
					pi->tx_srom_max_2g -
					((offset_mcs & 0xf) * 2);
				offset_mcs >>= 4;
			}
		} else {
			offset_mcs = pi->mcs20_po;
			for (i = TXP_FIRST_SISO_MCS_20;
			     i <= TXP_LAST_SISO_MCS_20; i++) {
				pi->tx_srom_max_rate_2g[i - 8] =
					pi->tx_srom_max_2g -
					((offset_mcs & 0xf) * 2);
				offset_mcs >>= 4;
			}
		}
	}

	max_num_rate = ((FUNC5(pi)) ? (TXP_NUM_RATES) :
			((FUNC4(pi)) ?
			 (TXP_LAST_SISO_MCS_20 + 1) : (TXP_LAST_OFDM + 1)));

	FUNC13(pi, band);

	for (rate = start_rate; rate < max_num_rate; rate++) {

		tx_pwr_target[rate] = pi->tx_user_target[rate];

		if (pi->user_txpwr_at_rfport)
			tx_pwr_target[rate] +=
				FUNC14(pi,
								 target_chan,
								 band,
								 rate);

		FUNC12((struct brcms_phy_pub *) pi,
					  target_chan,
					  &mintxpwr, &maxtxpwr, rate);

		maxtxpwr = FUNC9(maxtxpwr, pi->txpwr_limit[rate]);

		maxtxpwr = (maxtxpwr > pactrl) ? (maxtxpwr - pactrl) : 0;

		maxtxpwr = (maxtxpwr > 6) ? (maxtxpwr - 6) : 0;

		maxtxpwr = FUNC9(maxtxpwr, tx_pwr_target[rate]);

		if (pi->txpwr_percent <= 100)
			maxtxpwr = (maxtxpwr * pi->txpwr_percent) / 100;

		tx_pwr_target[rate] = FUNC7(maxtxpwr, mintxpwr);

		tx_pwr_target[rate] =
			FUNC9(tx_pwr_target[rate], pi->txpwr_env_limit[rate]);

		if (tx_pwr_target[rate] > tx_pwr_max)
			tx_pwr_max_rate_ind = rate;

		tx_pwr_max = FUNC7(tx_pwr_max, tx_pwr_target[rate]);
		tx_pwr_min = FUNC9(tx_pwr_min, tx_pwr_target[rate]);
	}

	FUNC8(pi->tx_power_offset, 0, sizeof(pi->tx_power_offset));
	pi->tx_power_max = tx_pwr_max;
	pi->tx_power_min = tx_pwr_min;
	pi->tx_power_max_rate_ind = tx_pwr_max_rate_ind;
	for (rate = 0; rate < max_num_rate; rate++) {

		pi->tx_power_target[rate] = tx_pwr_target[rate];

		if (!pi->hwpwrctrl || FUNC5(pi))
			pi->tx_power_offset[rate] =
				pi->tx_power_max - pi->tx_power_target[rate];
		else
			pi->tx_power_offset[rate] =
				pi->tx_power_target[rate] - pi->tx_power_min;
	}

	txpwr_recalc_fn = pi->pi_fptr.txpwrrecalc;
	if (txpwr_recalc_fn)
		(*txpwr_recalc_fn)(pi);
}