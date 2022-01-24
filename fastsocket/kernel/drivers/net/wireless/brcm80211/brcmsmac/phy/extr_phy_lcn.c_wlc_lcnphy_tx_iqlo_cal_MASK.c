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
typedef  size_t u8 ;
typedef  int u16 ;
struct lcnphy_txgains {int gm_gain; int pga_gain; int pad_gain; } ;
struct TYPE_3__ {int* txiqlocal_bestcoeffs; int txiqlocal_bestcoeffs_valid; } ;
struct brcms_phy_lcnphy {TYPE_1__ lcnphy_cal_results; int /*<<< orphan*/  lcnphy_tssi_idx; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {scalar_t__ phy_tx_tone_freq; int /*<<< orphan*/  radio_chanspec; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  ncorr_override ;
typedef  enum lcnphy_cal_mode { ____Placeholder_lcnphy_cal_mode } lcnphy_cal_mode ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  LCNPHY_CAL_FULL 129 
#define  LCNPHY_CAL_RECAL 128 
 int /*<<< orphan*/  LCNPHY_TBL_ID_IQLOCAL ; 
 int LCNPHY_TX_PWR_CTRL_OFF ; 
 int* iqcal_gainparams_numgains_lcnphy ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int* lcnphy_iqcal_ir_gainladder ; 
 int* lcnphy_iqcal_loft_gainladder ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 
 int FUNC8 (struct brcms_phy*,int) ; 
 int*** tbl_iqcal_gainparams_lcnphy ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int FUNC13 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*) ; 
 int FUNC20 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct brcms_phy*,int*) ; 
 int /*<<< orphan*/  FUNC23 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC24(struct brcms_phy *pi,
		       struct lcnphy_txgains *target_gains,
		       enum lcnphy_cal_mode cal_mode, bool keep_tone)
{

	struct lcnphy_txgains cal_gains, temp_gains;
	u16 hash;
	u8 band_idx;
	int j;
	u16 ncorr_override[5];
	u16 syst_coeffs[] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
			      0x0000, 0x0000, 0x0000, 0x0000, 0x0000};

	u16 commands_fullcal[] = {
		0x8434, 0x8334, 0x8084, 0x8267, 0x8056, 0x8234
	};

	u16 commands_recal[] = {
		0x8434, 0x8334, 0x8084, 0x8267, 0x8056, 0x8234
	};

	u16 command_nums_fullcal[] = {
		0x7a97, 0x7a97, 0x7a97, 0x7a87, 0x7a87, 0x7b97
	};

	u16 command_nums_recal[] = {
		0x7a97, 0x7a97, 0x7a97, 0x7a87, 0x7a87, 0x7b97
	};
	u16 *command_nums = command_nums_fullcal;

	u16 *start_coeffs = NULL, *cal_cmds = NULL, cal_type, diq_start;
	u16 tx_pwr_ctrl_old, save_txpwrctrlrfctrl2;
	u16 save_sslpnCalibClkEnCtrl, save_sslpnRxFeClkEnCtrl;
	bool tx_gain_override_old;
	struct lcnphy_txgains old_gains;
	uint i, n_cal_cmds = 0, n_cal_start = 0;
	u16 *values_to_save;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	values_to_save = FUNC3(sizeof(u16) * 20, GFP_ATOMIC);
	if (NULL == values_to_save)
		return;

	save_sslpnRxFeClkEnCtrl = FUNC8(pi, 0x6db);
	save_sslpnCalibClkEnCtrl = FUNC8(pi, 0x6da);

	FUNC7(pi, 0x6da, 0x40);
	FUNC7(pi, 0x6db, 0x3);

	switch (cal_mode) {
	case LCNPHY_CAL_FULL:
		start_coeffs = syst_coeffs;
		cal_cmds = commands_fullcal;
		n_cal_cmds = FUNC0(commands_fullcal);
		break;

	case LCNPHY_CAL_RECAL:
		start_coeffs = syst_coeffs;
		cal_cmds = commands_recal;
		n_cal_cmds = FUNC0(commands_recal);
		command_nums = command_nums_recal;
		break;

	default:
		break;
	}

	FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
				      start_coeffs, 11, 16, 64);

	FUNC23(pi, 0x6da, 0xffff);
	FUNC6(pi, 0x503, (0x1 << 3), (1) << 3);

	tx_pwr_ctrl_old = FUNC13(pi);

	FUNC6(pi, 0x4a4, (0x1 << 12), (1) << 12);

	FUNC17(pi, LCNPHY_TX_PWR_CTRL_OFF);

	save_txpwrctrlrfctrl2 = FUNC8(pi, 0x4db);

	FUNC6(pi, 0x4db, (0x3ff << 0), (0x2a6) << 0);

	FUNC6(pi, 0x4db, (0x7 << 12), (2) << 12);

	FUNC21(pi, values_to_save);

	tx_gain_override_old = FUNC20(pi);
	if (tx_gain_override_old)
		FUNC12(pi, &old_gains);

	if (!target_gains) {
		if (!tx_gain_override_old)
			FUNC16(pi,
						       pi_lcn->lcnphy_tssi_idx);
		FUNC12(pi, &temp_gains);
		target_gains = &temp_gains;
	}

	hash = (target_gains->gm_gain << 8) |
	       (target_gains->pga_gain << 4) | (target_gains->pad_gain);

	band_idx = (FUNC1(pi->radio_chanspec) ? 1 : 0);

	cal_gains = *target_gains;
	FUNC5(ncorr_override, 0, sizeof(ncorr_override));
	for (j = 0; j < iqcal_gainparams_numgains_lcnphy[band_idx]; j++) {
		if (hash == tbl_iqcal_gainparams_lcnphy[band_idx][j][0]) {
			cal_gains.gm_gain =
				tbl_iqcal_gainparams_lcnphy[band_idx][j][1];
			cal_gains.pga_gain =
				tbl_iqcal_gainparams_lcnphy[band_idx][j][2];
			cal_gains.pad_gain =
				tbl_iqcal_gainparams_lcnphy[band_idx][j][3];
			FUNC4(ncorr_override,
			       &tbl_iqcal_gainparams_lcnphy[band_idx][j][3],
			       sizeof(ncorr_override));
			break;
		}
	}

	FUNC15(pi, &cal_gains);

	FUNC23(pi, 0x453, 0xaa9);
	FUNC23(pi, 0x93d, 0xc0);

	FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
				      lcnphy_iqcal_loft_gainladder,
				      FUNC0(lcnphy_iqcal_loft_gainladder),
				      16, 0);

	FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
				      lcnphy_iqcal_ir_gainladder,
				      FUNC0(
					      lcnphy_iqcal_ir_gainladder), 16,
				      32);

	if (pi->phy_tx_tone_freq) {

		FUNC19(pi);
		FUNC9(5);
		FUNC18(pi, 3750, 88, 1);
	} else {
		FUNC18(pi, 3750, 88, 1);
	}

	FUNC23(pi, 0x6da, 0xffff);

	for (i = n_cal_start; i < n_cal_cmds; i++) {
		u16 zero_diq = 0;
		u16 best_coeffs[11];
		u16 command_num;

		cal_type = (cal_cmds[i] & 0x0f00) >> 8;

		command_num = command_nums[i];
		if (ncorr_override[cal_type])
			command_num =
				ncorr_override[cal_type] << 8 | (command_num &
								 0xff);

		FUNC23(pi, 0x452, command_num);

		if ((cal_type == 3) || (cal_type == 4)) {
			FUNC10(pi, LCNPHY_TBL_ID_IQLOCAL,
						     &diq_start, 1, 16, 69);

			FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
						      &zero_diq, 1, 16, 69);
		}

		FUNC23(pi, 0x451, cal_cmds[i]);

		if (!FUNC14(pi))
			goto cleanup;

		FUNC10(pi, LCNPHY_TBL_ID_IQLOCAL,
					     best_coeffs,
					     FUNC0(best_coeffs), 16, 96);
		FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
					      best_coeffs,
					      FUNC0(best_coeffs), 16, 64);

		if ((cal_type == 3) || (cal_type == 4))
			FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
						      &diq_start, 1, 16, 69);
		FUNC10(pi, LCNPHY_TBL_ID_IQLOCAL,
					     pi_lcn->lcnphy_cal_results.
					     txiqlocal_bestcoeffs,
					     FUNC0(pi_lcn->
							lcnphy_cal_results.
							txiqlocal_bestcoeffs),
					     16, 96);
	}

	FUNC10(pi, LCNPHY_TBL_ID_IQLOCAL,
				     pi_lcn->lcnphy_cal_results.
				     txiqlocal_bestcoeffs,
				     FUNC0(pi_lcn->lcnphy_cal_results.
						txiqlocal_bestcoeffs), 16, 96);
	pi_lcn->lcnphy_cal_results.txiqlocal_bestcoeffs_valid = true;

	FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
				      &pi_lcn->lcnphy_cal_results.
				      txiqlocal_bestcoeffs[0], 4, 16, 80);

	FUNC11(pi, LCNPHY_TBL_ID_IQLOCAL,
				      &pi_lcn->lcnphy_cal_results.
				      txiqlocal_bestcoeffs[5], 2, 16, 85);

cleanup:
	FUNC22(pi, values_to_save);
	FUNC2(values_to_save);

	if (!keep_tone)
		FUNC19(pi);

	FUNC23(pi, 0x4db, save_txpwrctrlrfctrl2);

	FUNC23(pi, 0x453, 0);

	if (tx_gain_override_old)
		FUNC15(pi, &old_gains);
	FUNC17(pi, tx_pwr_ctrl_old);

	FUNC23(pi, 0x6da, save_sslpnCalibClkEnCtrl);
	FUNC23(pi, 0x6db, save_sslpnRxFeClkEnCtrl);

}