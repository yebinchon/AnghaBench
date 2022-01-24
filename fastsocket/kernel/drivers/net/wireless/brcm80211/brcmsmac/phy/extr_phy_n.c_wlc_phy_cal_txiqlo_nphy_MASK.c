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
typedef  int u32 ;
typedef  int u16 ;
struct nphy_txgains {int dummy; } ;
struct nphy_iqcal_params {int cal_gain; int* ncorr; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int phyhang_avoid; scalar_t__ mphase_cal_phase_id; int* mphase_txcal_bestcoeffs; int nphy_txiqlocal_coeffsvalid; int* nphy_txiqlocal_bestc; int mphase_txcal_cmdidx; int mphase_txcal_numcmds; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  nphy_txiqlocal_chanspec; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ MPHASE_CAL_STATE_TXPHASE0 ; 
 int MPHASE_CAL_STATE_TXPHASE4 ; 
 int MPHASE_CAL_STATE_TXPHASE5 ; 
 int NPHY_N_GCTL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_IQLOCAL ; 
 int /*<<< orphan*/  NPHY_TBL_ID_RFSEQ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int,char*) ; 
 int FUNC10 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,struct nphy_txgains,struct nphy_iqcal_params*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*) ; 
 int FUNC18 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC22 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC23 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct brcms_phy*,int,int) ; 

int
FUNC25(struct brcms_phy *pi, struct nphy_txgains target_gain,
			bool fullcal, bool mphase)
{
	u16 val;
	u16 tbl_buf[11];
	u8 cal_cnt;
	u16 cal_cmd;
	u8 num_cals, max_cal_cmds;
	u16 core_no, cal_type;
	u16 diq_start = 0;
	u8 phy_bw;
	u16 max_val;
	u16 tone_freq;
	u16 gain_save[2];
	u16 cal_gain[2];
	struct nphy_iqcal_params cal_params[2];
	u32 tbl_len;
	void *tbl_ptr;
	bool ladder_updated[2];
	u8 mphase_cal_lastphase = 0;
	int bcmerror = 0;
	bool phyhang_avoid_state = false;

	u16 tbl_tx_iqlo_cal_loft_ladder_20[] = {
		0x0300, 0x0500, 0x0700, 0x0900, 0x0d00, 0x1100, 0x1900, 0x1901,
		0x1902,
		0x1903, 0x1904, 0x1905, 0x1906, 0x1907, 0x2407, 0x3207, 0x4607,
		0x6407
	};

	u16 tbl_tx_iqlo_cal_iqimb_ladder_20[] = {
		0x0200, 0x0300, 0x0600, 0x0900, 0x0d00, 0x1100, 0x1900, 0x2400,
		0x3200,
		0x4600, 0x6400, 0x6401, 0x6402, 0x6403, 0x6404, 0x6405, 0x6406,
		0x6407
	};

	u16 tbl_tx_iqlo_cal_loft_ladder_40[] = {
		0x0200, 0x0300, 0x0400, 0x0700, 0x0900, 0x0c00, 0x1200, 0x1201,
		0x1202,
		0x1203, 0x1204, 0x1205, 0x1206, 0x1207, 0x1907, 0x2307, 0x3207,
		0x4707
	};

	u16 tbl_tx_iqlo_cal_iqimb_ladder_40[] = {
		0x0100, 0x0200, 0x0400, 0x0700, 0x0900, 0x0c00, 0x1200, 0x1900,
		0x2300,
		0x3200, 0x4700, 0x4701, 0x4702, 0x4703, 0x4704, 0x4705, 0x4706,
		0x4707
	};

	u16 tbl_tx_iqlo_cal_startcoefs[] = {
		0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
		0x0000
	};

	u16 tbl_tx_iqlo_cal_cmds_fullcal[] = {
		0x8123, 0x8264, 0x8086, 0x8245, 0x8056,
		0x9123, 0x9264, 0x9086, 0x9245, 0x9056
	};

	u16 tbl_tx_iqlo_cal_cmds_recal[] = {
		0x8101, 0x8253, 0x8053, 0x8234, 0x8034,
		0x9101, 0x9253, 0x9053, 0x9234, 0x9034
	};

	u16 tbl_tx_iqlo_cal_startcoefs_nphyrev3[] = {
		0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
		0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
		0x0000
	};

	u16 tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3[] = {
		0x8434, 0x8334, 0x8084, 0x8267, 0x8056, 0x8234,
		0x9434, 0x9334, 0x9084, 0x9267, 0x9056, 0x9234
	};

	u16 tbl_tx_iqlo_cal_cmds_recal_nphyrev3[] = {
		0x8423, 0x8323, 0x8073, 0x8256, 0x8045, 0x8223,
		0x9423, 0x9323, 0x9073, 0x9256, 0x9045, 0x9223
	};

	FUNC13(pi, true);

	if (FUNC3(pi->pubpi.phy_rev, 4)) {
		phyhang_avoid_state = pi->phyhang_avoid;
		pi->phyhang_avoid = false;
	}

	if (FUNC2(pi->radio_chanspec))
		phy_bw = 40;
	else
		phy_bw = 20;

	FUNC15(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16, gain_save);

	for (core_no = 0; core_no <= 1; core_no++) {
		FUNC11(pi, core_no, target_gain,
					      &cal_params[core_no]);
		cal_gain[core_no] = cal_params[core_no].cal_gain;
	}

	FUNC16(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16, cal_gain);

	FUNC22(pi);

	FUNC20(pi);

	ladder_updated[0] = ladder_updated[1] = false;
	if (!(FUNC3(pi->pubpi.phy_rev, 6) ||
	      (FUNC4(pi->pubpi.phy_rev, 5) && FUNC7(pi)
	       && (FUNC1(pi->radio_chanspec))))) {

		if (phy_bw == 40) {
			tbl_ptr = tbl_tx_iqlo_cal_loft_ladder_40;
			tbl_len = FUNC0(tbl_tx_iqlo_cal_loft_ladder_40);
		} else {
			tbl_ptr = tbl_tx_iqlo_cal_loft_ladder_20;
			tbl_len = FUNC0(tbl_tx_iqlo_cal_loft_ladder_20);
		}
		FUNC16(pi, NPHY_TBL_ID_IQLOCAL, tbl_len, 0,
					 16, tbl_ptr);

		if (phy_bw == 40) {
			tbl_ptr = tbl_tx_iqlo_cal_iqimb_ladder_40;
			tbl_len = FUNC0(tbl_tx_iqlo_cal_iqimb_ladder_40);
		} else {
			tbl_ptr = tbl_tx_iqlo_cal_iqimb_ladder_20;
			tbl_len = FUNC0(tbl_tx_iqlo_cal_iqimb_ladder_20);
		}
		FUNC16(pi, NPHY_TBL_ID_IQLOCAL, tbl_len, 32,
					 16, tbl_ptr);
	}

	if (FUNC3(pi->pubpi.phy_rev, 7))
		FUNC24(pi, 0xc2, 0x8ad9);
	else
		FUNC24(pi, 0xc2, 0x8aa9);

	max_val = 250;
	tone_freq = (phy_bw == 20) ? 2500 : 5000;

	if (pi->mphase_cal_phase_id > MPHASE_CAL_STATE_TXPHASE0) {
		FUNC12(pi, phy_bw * 8, 0xffff, 0, 1, 0, false);
		bcmerror = 0;
	} else {
		bcmerror =
			FUNC18(pi, tone_freq, max_val, 1, 0,
					     false);
	}

	if (bcmerror == 0) {

		if (pi->mphase_cal_phase_id > MPHASE_CAL_STATE_TXPHASE0) {
			tbl_ptr = pi->mphase_txcal_bestcoeffs;
			tbl_len = FUNC0(pi->mphase_txcal_bestcoeffs);
			if (FUNC6(pi->pubpi.phy_rev, 3))
				tbl_len -= 2;
		} else {
			if ((!fullcal) && (pi->nphy_txiqlocal_coeffsvalid)) {

				tbl_ptr = pi->nphy_txiqlocal_bestc;
				tbl_len = FUNC0(pi->nphy_txiqlocal_bestc);
				if (FUNC6(pi->pubpi.phy_rev, 3))
					tbl_len -= 2;
			} else {

				fullcal = true;

				if (FUNC3(pi->pubpi.phy_rev, 3)) {
					tbl_ptr =
					    tbl_tx_iqlo_cal_startcoefs_nphyrev3;
					tbl_len = FUNC0(
					   tbl_tx_iqlo_cal_startcoefs_nphyrev3);
				} else {
					tbl_ptr = tbl_tx_iqlo_cal_startcoefs;
					tbl_len = FUNC0(
						    tbl_tx_iqlo_cal_startcoefs);
				}
			}
		}
		FUNC16(pi, NPHY_TBL_ID_IQLOCAL, tbl_len, 64,
					 16, tbl_ptr);

		if (fullcal) {
			max_cal_cmds = (FUNC3(pi->pubpi.phy_rev, 3)) ?
				       FUNC0(
				tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3) :
				       FUNC0(tbl_tx_iqlo_cal_cmds_fullcal);
		} else {
			max_cal_cmds = (FUNC3(pi->pubpi.phy_rev, 3)) ?
				       FUNC0(
				tbl_tx_iqlo_cal_cmds_recal_nphyrev3) :
				       FUNC0(tbl_tx_iqlo_cal_cmds_recal);
		}

		if (mphase) {
			cal_cnt = pi->mphase_txcal_cmdidx;
			if ((cal_cnt + pi->mphase_txcal_numcmds) < max_cal_cmds)
				num_cals = cal_cnt + pi->mphase_txcal_numcmds;
			else
				num_cals = max_cal_cmds;
		} else {
			cal_cnt = 0;
			num_cals = max_cal_cmds;
		}

		for (; cal_cnt < num_cals; cal_cnt++) {

			if (fullcal) {
				cal_cmd = (FUNC3(pi->pubpi.phy_rev, 3)) ?
					  tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3
					  [cal_cnt] :
					  tbl_tx_iqlo_cal_cmds_fullcal[cal_cnt];
			} else {
				cal_cmd = (FUNC3(pi->pubpi.phy_rev, 3)) ?
					  tbl_tx_iqlo_cal_cmds_recal_nphyrev3[
					cal_cnt]
					  : tbl_tx_iqlo_cal_cmds_recal[cal_cnt];
			}

			core_no = ((cal_cmd & 0x3000) >> 12);
			cal_type = ((cal_cmd & 0x0F00) >> 8);

			if (FUNC3(pi->pubpi.phy_rev, 6) ||
			    (FUNC4(pi->pubpi.phy_rev, 5) &&
			     FUNC7(pi)
			     && (FUNC1(pi->radio_chanspec)))) {
				if (!ladder_updated[core_no]) {
					FUNC23(
						pi,
						core_no);
					ladder_updated[core_no] = true;
				}
			}

			val =
				(cal_params[core_no].
				 ncorr[cal_type] << 8) | NPHY_N_GCTL;
			FUNC24(pi, 0xc1, val);

			if ((cal_type == 1) || (cal_type == 3)
			    || (cal_type == 4)) {

				FUNC15(pi, NPHY_TBL_ID_IQLOCAL,
							1, 69 + core_no, 16,
							tbl_buf);

				diq_start = tbl_buf[0];

				tbl_buf[0] = 0;
				FUNC16(pi,
							 NPHY_TBL_ID_IQLOCAL, 1,
							 69 + core_no, 16,
							 tbl_buf);
			}

			FUNC24(pi, 0xc0, cal_cmd);

			FUNC8(((FUNC10(pi, 0xc0) & 0xc000) != 0),
				 20000);
			if (FUNC9(FUNC10(pi, 0xc0) & 0xc000,
				 "HW error: txiq calib"))
				return -EIO;

			FUNC15(pi, NPHY_TBL_ID_IQLOCAL,
						tbl_len, 96, 16, tbl_buf);
			FUNC16(pi, NPHY_TBL_ID_IQLOCAL,
						 tbl_len, 64, 16, tbl_buf);

			if ((cal_type == 1) || (cal_type == 3)
			    || (cal_type == 4)) {

				tbl_buf[0] = diq_start;

			}

		}

		if (mphase) {
			pi->mphase_txcal_cmdidx = num_cals;
			if (pi->mphase_txcal_cmdidx >= max_cal_cmds)
				pi->mphase_txcal_cmdidx = 0;
		}

		mphase_cal_lastphase =
			(FUNC5(pi->pubpi.phy_rev, 2)) ?
			MPHASE_CAL_STATE_TXPHASE4 : MPHASE_CAL_STATE_TXPHASE5;

		if (!mphase
		    || (pi->mphase_cal_phase_id == mphase_cal_lastphase)) {

			FUNC15(pi, NPHY_TBL_ID_IQLOCAL, 4, 96,
						16, tbl_buf);
			FUNC16(pi, NPHY_TBL_ID_IQLOCAL, 4, 80,
						 16, tbl_buf);

			if (FUNC6(pi->pubpi.phy_rev, 2)) {

				tbl_buf[0] = 0;
				tbl_buf[1] = 0;
				tbl_buf[2] = 0;
				tbl_buf[3] = 0;

			}
			FUNC16(pi, NPHY_TBL_ID_IQLOCAL, 4, 88,
						 16, tbl_buf);

			FUNC15(pi, NPHY_TBL_ID_IQLOCAL, 2, 101,
						16, tbl_buf);
			FUNC16(pi, NPHY_TBL_ID_IQLOCAL, 2, 85,
						 16, tbl_buf);

			FUNC16(pi, NPHY_TBL_ID_IQLOCAL, 2, 93,
						 16, tbl_buf);

			tbl_len = FUNC0(pi->nphy_txiqlocal_bestc);
			if (FUNC6(pi->pubpi.phy_rev, 3))
				tbl_len -= 2;

			FUNC15(pi, NPHY_TBL_ID_IQLOCAL,
						tbl_len, 96, 16,
						pi->nphy_txiqlocal_bestc);

			pi->nphy_txiqlocal_coeffsvalid = true;
			pi->nphy_txiqlocal_chanspec = pi->radio_chanspec;
		} else {
			tbl_len = FUNC0(pi->mphase_txcal_bestcoeffs);
			if (FUNC6(pi->pubpi.phy_rev, 3))
				tbl_len -= 2;

			FUNC15(pi, NPHY_TBL_ID_IQLOCAL,
						tbl_len, 96, 16,
						pi->mphase_txcal_bestcoeffs);
		}

		FUNC14(pi);

		FUNC24(pi, 0xc2, 0x0000);

	}

	FUNC19(pi);

	FUNC16(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16,
				 gain_save);

	FUNC21(pi);

	if (FUNC6(pi->pubpi.phy_rev, 2)) {
		if (!mphase
		    || (pi->mphase_cal_phase_id == mphase_cal_lastphase))
			FUNC17(pi);
	}

	if (FUNC3(pi->pubpi.phy_rev, 4))
		pi->phyhang_avoid = phyhang_avoid_state;

	FUNC13(pi, false);

	return bcmerror;
}