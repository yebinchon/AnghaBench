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
typedef  int u8 ;
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_4__ {void** rssical_phyregs_5G; void** rssical_radio_regs_5G; void** rssical_phyregs_2G; void** rssical_radio_regs_2G; } ;
struct TYPE_3__ {int phy_corenum; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  nphy_rssical_chanspec_5G; TYPE_2__ rssical_cache; TYPE_1__ pubpi; int /*<<< orphan*/  nphy_rssical_chanspec_2G; } ;
typedef  int s8 ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_RAIL_I ; 
 int /*<<< orphan*/  NPHY_RAIL_Q ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RfctrlOverride_cmd_rx_pu ; 
 int /*<<< orphan*/  NPHY_REV7_RfctrlOverride_cmd_rxrf_pu ; 
 int /*<<< orphan*/  NPHY_RFSEQ_RESET2RX ; 
 int NPHY_RSSICAL_MAXD ; 
 int NPHY_RSSICAL_MAXREAD ; 
 int NPHY_RSSICAL_NB_TARGET ; 
 int NPHY_RSSICAL_NPOLL ; 
 int NPHY_RSSICAL_W1_TARGET_REV3 ; 
 int NPHY_RSSICAL_W2_TARGET_REV3 ; 
 int NPHY_RSSI_SEL_NB ; 
 int NPHY_RSSI_SEL_W1 ; 
 int NPHY_RSSI_SEL_W2 ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_OFF ; 
 int /*<<< orphan*/  NPHY_RfctrlIntc_override_TRSW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 int RADIO_2056_RSSI_VCM_SHIFT ; 
 int RADIO_2056_RX0 ; 
 int RADIO_2056_RX1 ; 
 int RADIO_2056_RX_RSSI_MISC ; 
 int /*<<< orphan*/  RADIO_2056_VCM_MASK ; 
 int RADIO_2057_NB_MASTER_CORE0 ; 
 int RADIO_2057_NB_MASTER_CORE1 ; 
 int /*<<< orphan*/  RADIO_2057_VCM_MASK ; 
 int /*<<< orphan*/  RADIO_MIMO_CORESEL_ALLRXTX ; 
 int /*<<< orphan*/  RADIO_MIMO_CORESEL_CORE1 ; 
 int /*<<< orphan*/  RADIO_MIMO_CORESEL_CORE2 ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct brcms_phy*,int) ; 
 void* FUNC7 (struct brcms_phy*,int) ; 
 int FUNC8 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC19(struct brcms_phy *pi)
{
	u16 classif_state;
	u16 clip_state[2];
	u16 clip_off[] = { 0xffff, 0xffff };
	s32 target_code;
	u8 vcm, min_vcm;
	u8 vcm_final = 0;
	u8 result_idx;
	s32 poll_results[8][4] = {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0}
	};
	s32 poll_result_core[4] = { 0, 0, 0, 0 };
	s32 min_d = NPHY_RSSICAL_MAXD, curr_d;
	s32 fine_digital_offset[4];
	s32 poll_results_min[4] = { 0, 0, 0, 0 };
	s32 min_poll;
	u8 vcm_level_max;
	u8 core;
	u8 wb_cnt;
	u8 rssi_type;
	u16 NPHY_Rfctrlintc1_save, NPHY_Rfctrlintc2_save;
	u16 NPHY_AfectrlOverride1_save, NPHY_AfectrlOverride2_save;
	u16 NPHY_AfectrlCore1_save, NPHY_AfectrlCore2_save;
	u16 NPHY_RfctrlOverride0_save, NPHY_RfctrlOverride1_save;
	u16 NPHY_RfctrlOverrideAux0_save, NPHY_RfctrlOverrideAux1_save;
	u16 NPHY_RfctrlCmd_save;
	u16 NPHY_RfctrlMiscReg1_save, NPHY_RfctrlMiscReg2_save;
	u16 NPHY_RfctrlRSSIOTHERS1_save, NPHY_RfctrlRSSIOTHERS2_save;
	u8 rxcore_state;
	u16 NPHY_REV7_RfctrlOverride3_save, NPHY_REV7_RfctrlOverride4_save;
	u16 NPHY_REV7_RfctrlOverride5_save, NPHY_REV7_RfctrlOverride6_save;
	u16 NPHY_REV7_RfctrlMiscReg3_save, NPHY_REV7_RfctrlMiscReg4_save;
	u16 NPHY_REV7_RfctrlMiscReg5_save, NPHY_REV7_RfctrlMiscReg6_save;

	NPHY_REV7_RfctrlOverride3_save =
		NPHY_REV7_RfctrlOverride4_save =
		NPHY_REV7_RfctrlOverride5_save =
		NPHY_REV7_RfctrlOverride6_save =
		NPHY_REV7_RfctrlMiscReg3_save =
		NPHY_REV7_RfctrlMiscReg4_save =
		NPHY_REV7_RfctrlMiscReg5_save =
		NPHY_REV7_RfctrlMiscReg6_save = 0;

	classif_state = FUNC8(pi, 0, 0);
	FUNC8(pi, (0x7 << 0), 4);
	FUNC9(pi, 0, clip_state);
	FUNC9(pi, 1, clip_off);

	NPHY_Rfctrlintc1_save = FUNC6(pi, 0x91);
	NPHY_Rfctrlintc2_save = FUNC6(pi, 0x92);
	NPHY_AfectrlOverride1_save = FUNC6(pi, 0x8f);
	NPHY_AfectrlOverride2_save = FUNC6(pi, 0xa5);
	NPHY_AfectrlCore1_save = FUNC6(pi, 0xa6);
	NPHY_AfectrlCore2_save = FUNC6(pi, 0xa7);
	NPHY_RfctrlOverride0_save = FUNC6(pi, 0xe7);
	NPHY_RfctrlOverride1_save = FUNC6(pi, 0xec);
	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		NPHY_REV7_RfctrlOverride3_save = FUNC6(pi, 0x342);
		NPHY_REV7_RfctrlOverride4_save = FUNC6(pi, 0x343);
		NPHY_REV7_RfctrlOverride5_save = FUNC6(pi, 0x346);
		NPHY_REV7_RfctrlOverride6_save = FUNC6(pi, 0x347);
	}
	NPHY_RfctrlOverrideAux0_save = FUNC6(pi, 0xe5);
	NPHY_RfctrlOverrideAux1_save = FUNC6(pi, 0xe6);
	NPHY_RfctrlCmd_save = FUNC6(pi, 0x78);
	NPHY_RfctrlMiscReg1_save = FUNC6(pi, 0xf9);
	NPHY_RfctrlMiscReg2_save = FUNC6(pi, 0xfb);
	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		NPHY_REV7_RfctrlMiscReg3_save = FUNC6(pi, 0x340);
		NPHY_REV7_RfctrlMiscReg4_save = FUNC6(pi, 0x341);
		NPHY_REV7_RfctrlMiscReg5_save = FUNC6(pi, 0x344);
		NPHY_REV7_RfctrlMiscReg6_save = FUNC6(pi, 0x345);
	}
	NPHY_RfctrlRSSIOTHERS1_save = FUNC6(pi, 0x7a);
	NPHY_RfctrlRSSIOTHERS2_save = FUNC6(pi, 0x7d);

	FUNC15(pi, NPHY_RfctrlIntc_override_OFF, 0,
					 RADIO_MIMO_CORESEL_ALLRXTX);
	FUNC15(pi, NPHY_RfctrlIntc_override_TRSW, 1,
					 RADIO_MIMO_CORESEL_ALLRXTX);

	if (FUNC2(pi->pubpi.phy_rev, 7))
		FUNC12(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_rxrf_pu,
			0, 0, 0);
	else
		FUNC13(pi, (0x1 << 0), 0, 0, 0);

	if (FUNC2(pi->pubpi.phy_rev, 7))
		FUNC12(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_rx_pu,
			1, 0, 0);
	else
		FUNC13(pi, (0x1 << 1), 1, 0, 0);

	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		FUNC14(pi, (0x1 << 7),
						  1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC14(pi, (0x1 << 6), 1, 0, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
	} else {
		FUNC13(pi, (0x1 << 7), 1, 0, 0);
		FUNC13(pi, (0x1 << 6), 1, 0, 0);
	}

	if (FUNC1(pi->radio_chanspec)) {
		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			FUNC14(
				pi, (0x1 << 5),
				0, 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);
			FUNC14(
				pi, (0x1 << 4), 1, 0,
				0,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);
		} else {
			FUNC13(pi, (0x1 << 5), 0, 0, 0);
			FUNC13(pi, (0x1 << 4), 1, 0, 0);
		}

	} else {
		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			FUNC14(
				pi, (0x1 << 4),
				0, 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);
			FUNC14(
				pi, (0x1 << 5), 1, 0,
				0,
				NPHY_REV7_RFCTRLOVERRIDE_ID0);
		} else {
			FUNC13(pi, (0x1 << 4), 0, 0, 0);
			FUNC13(pi, (0x1 << 5), 1, 0, 0);
		}
	}

	rxcore_state = FUNC16(
		(struct brcms_phy_pub *) pi);

	vcm_level_max = 8;

	for (core = 0; core < pi->pubpi.phy_corenum; core++) {

		if ((rxcore_state & (1 << core)) == 0)
			continue;

		FUNC17(pi, 0x0, 0x0,
					       core ==
					       PHY_CORE_0 ?
					       RADIO_MIMO_CORESEL_CORE1 :
					       RADIO_MIMO_CORESEL_CORE2,
					       NPHY_RAIL_I, NPHY_RSSI_SEL_NB);
		FUNC17(pi, 0x0, 0x0,
					       core ==
					       PHY_CORE_0 ?
					       RADIO_MIMO_CORESEL_CORE1 :
					       RADIO_MIMO_CORESEL_CORE2,
					       NPHY_RAIL_Q, NPHY_RSSI_SEL_NB);

		for (vcm = 0; vcm < vcm_level_max; vcm++) {
			if (FUNC2(pi->pubpi.phy_rev, 7))
				FUNC5(pi, (core == PHY_CORE_0) ?
					      RADIO_2057_NB_MASTER_CORE0 :
					      RADIO_2057_NB_MASTER_CORE1,
					      RADIO_2057_VCM_MASK, vcm);
			else
				FUNC5(pi, RADIO_2056_RX_RSSI_MISC |
					      ((core ==
						PHY_CORE_0) ? RADIO_2056_RX0 :
					       RADIO_2056_RX1),
					      RADIO_2056_VCM_MASK,
					      vcm << RADIO_2056_RSSI_VCM_SHIFT);

			FUNC11(pi, NPHY_RSSI_SEL_NB,
					       &poll_results[vcm][0],
					       NPHY_RSSICAL_NPOLL);
		}

		for (result_idx = 0; result_idx < 4; result_idx++) {
			if ((core == result_idx / 2) &&
			    (result_idx % 2 == 0)) {

				min_d = NPHY_RSSICAL_MAXD;
				min_vcm = 0;
				min_poll =
					NPHY_RSSICAL_MAXREAD *
					NPHY_RSSICAL_NPOLL + 1;
				for (vcm = 0; vcm < vcm_level_max; vcm++) {
					curr_d =
						poll_results[vcm][result_idx] *
						poll_results[vcm][result_idx] +
						poll_results[vcm][result_idx +
								  1] *
						poll_results[vcm][result_idx +
								  1];
					if (curr_d < min_d) {
						min_d = curr_d;
						min_vcm = vcm;
					}
					if (poll_results[vcm][result_idx] <
					    min_poll)
						min_poll =
							poll_results[vcm]
							[result_idx];
				}
				vcm_final = min_vcm;
				poll_results_min[result_idx] = min_poll;
			}
		}

		if (FUNC2(pi->pubpi.phy_rev, 7))
			FUNC5(pi, (core == PHY_CORE_0) ?
				      RADIO_2057_NB_MASTER_CORE0 :
				      RADIO_2057_NB_MASTER_CORE1,
				      RADIO_2057_VCM_MASK, vcm_final);
		else
			FUNC5(pi, RADIO_2056_RX_RSSI_MISC |
				      ((core ==
					PHY_CORE_0) ? RADIO_2056_RX0 :
				       RADIO_2056_RX1), RADIO_2056_VCM_MASK,
				      vcm_final << RADIO_2056_RSSI_VCM_SHIFT);

		for (result_idx = 0; result_idx < 4; result_idx++) {
			if (core == result_idx / 2) {
				fine_digital_offset[result_idx] =
					(NPHY_RSSICAL_NB_TARGET *
					 NPHY_RSSICAL_NPOLL) -
					poll_results[vcm_final][result_idx];
				if (fine_digital_offset[result_idx] < 0) {
					fine_digital_offset[result_idx] =
						FUNC3(fine_digital_offset
						    [result_idx]);
					fine_digital_offset[result_idx] +=
						(NPHY_RSSICAL_NPOLL / 2);
					fine_digital_offset[result_idx] /=
						NPHY_RSSICAL_NPOLL;
					fine_digital_offset[result_idx] =
						-fine_digital_offset[
								    result_idx];
				} else {
					fine_digital_offset[result_idx] +=
						(NPHY_RSSICAL_NPOLL / 2);
					fine_digital_offset[result_idx] /=
						NPHY_RSSICAL_NPOLL;
				}

				if (poll_results_min[result_idx] ==
				    NPHY_RSSICAL_MAXREAD * NPHY_RSSICAL_NPOLL)
					fine_digital_offset[result_idx] =
						(NPHY_RSSICAL_NB_TARGET -
						 NPHY_RSSICAL_MAXREAD - 1);

				FUNC17(
					pi, 0x0,
					(s8)
					fine_digital_offset
					[result_idx],
					(result_idx / 2 == 0) ?
					RADIO_MIMO_CORESEL_CORE1 :
					RADIO_MIMO_CORESEL_CORE2,
					(result_idx % 2 == 0) ?
					NPHY_RAIL_I : NPHY_RAIL_Q,
					NPHY_RSSI_SEL_NB);
			}
		}

	}

	for (core = 0; core < pi->pubpi.phy_corenum; core++) {

		if ((rxcore_state & (1 << core)) == 0)
			continue;

		for (wb_cnt = 0; wb_cnt < 2; wb_cnt++) {
			if (wb_cnt == 0) {
				rssi_type = NPHY_RSSI_SEL_W1;
				target_code = NPHY_RSSICAL_W1_TARGET_REV3;
			} else {
				rssi_type = NPHY_RSSI_SEL_W2;
				target_code = NPHY_RSSICAL_W2_TARGET_REV3;
			}

			FUNC17(pi, 0x0, 0x0,
						       core ==
						       PHY_CORE_0 ?
						       RADIO_MIMO_CORESEL_CORE1
						       :
						       RADIO_MIMO_CORESEL_CORE2,
						       NPHY_RAIL_I, rssi_type);
			FUNC17(pi, 0x0, 0x0,
						       core ==
						       PHY_CORE_0 ?
						       RADIO_MIMO_CORESEL_CORE1
						       :
						       RADIO_MIMO_CORESEL_CORE2,
						       NPHY_RAIL_Q, rssi_type);

			FUNC11(pi, rssi_type, poll_result_core,
					       NPHY_RSSICAL_NPOLL);

			for (result_idx = 0; result_idx < 4; result_idx++) {
				if (core == result_idx / 2) {
					fine_digital_offset[result_idx] =
						(target_code *
						 NPHY_RSSICAL_NPOLL) -
						poll_result_core[result_idx];
					if (fine_digital_offset[result_idx] <
					    0) {
						fine_digital_offset[result_idx]
							= FUNC3(
							    fine_digital_offset
							    [result_idx]);
						fine_digital_offset[result_idx]
							+= (NPHY_RSSICAL_NPOLL
							    / 2);
						fine_digital_offset[result_idx]
							/= NPHY_RSSICAL_NPOLL;
						fine_digital_offset[result_idx]
							= -fine_digital_offset
								[result_idx];
					} else {
						fine_digital_offset[result_idx]
							+= (NPHY_RSSICAL_NPOLL
							    / 2);
						fine_digital_offset[result_idx]
							/= NPHY_RSSICAL_NPOLL;
					}

					FUNC17(
						pi, 0x0,
						(s8)
						fine_digital_offset
						[core *
						 2],
						(core == PHY_CORE_0) ?
						RADIO_MIMO_CORESEL_CORE1 :
						RADIO_MIMO_CORESEL_CORE2,
						(result_idx % 2 == 0) ?
						NPHY_RAIL_I :
						NPHY_RAIL_Q,
						rssi_type);
				}
			}

		}
	}

	FUNC18(pi, 0x91, NPHY_Rfctrlintc1_save);
	FUNC18(pi, 0x92, NPHY_Rfctrlintc2_save);

	FUNC10(pi, NPHY_RFSEQ_RESET2RX);

	FUNC4(pi, 0xe7, (0x1 << 0), 1 << 0);
	FUNC4(pi, 0x78, (0x1 << 0), 1 << 0);
	FUNC4(pi, 0xe7, (0x1 << 0), 0);

	FUNC4(pi, 0xec, (0x1 << 0), 1 << 0);
	FUNC4(pi, 0x78, (0x1 << 1), 1 << 1);
	FUNC4(pi, 0xec, (0x1 << 0), 0);

	FUNC18(pi, 0x8f, NPHY_AfectrlOverride1_save);
	FUNC18(pi, 0xa5, NPHY_AfectrlOverride2_save);
	FUNC18(pi, 0xa6, NPHY_AfectrlCore1_save);
	FUNC18(pi, 0xa7, NPHY_AfectrlCore2_save);
	FUNC18(pi, 0xe7, NPHY_RfctrlOverride0_save);
	FUNC18(pi, 0xec, NPHY_RfctrlOverride1_save);
	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		FUNC18(pi, 0x342, NPHY_REV7_RfctrlOverride3_save);
		FUNC18(pi, 0x343, NPHY_REV7_RfctrlOverride4_save);
		FUNC18(pi, 0x346, NPHY_REV7_RfctrlOverride5_save);
		FUNC18(pi, 0x347, NPHY_REV7_RfctrlOverride6_save);
	}
	FUNC18(pi, 0xe5, NPHY_RfctrlOverrideAux0_save);
	FUNC18(pi, 0xe6, NPHY_RfctrlOverrideAux1_save);
	FUNC18(pi, 0x78, NPHY_RfctrlCmd_save);
	FUNC18(pi, 0xf9, NPHY_RfctrlMiscReg1_save);
	FUNC18(pi, 0xfb, NPHY_RfctrlMiscReg2_save);
	if (FUNC2(pi->pubpi.phy_rev, 7)) {
		FUNC18(pi, 0x340, NPHY_REV7_RfctrlMiscReg3_save);
		FUNC18(pi, 0x341, NPHY_REV7_RfctrlMiscReg4_save);
		FUNC18(pi, 0x344, NPHY_REV7_RfctrlMiscReg5_save);
		FUNC18(pi, 0x345, NPHY_REV7_RfctrlMiscReg6_save);
	}
	FUNC18(pi, 0x7a, NPHY_RfctrlRSSIOTHERS1_save);
	FUNC18(pi, 0x7d, NPHY_RfctrlRSSIOTHERS2_save);

	if (FUNC0(pi->radio_chanspec)) {
		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			pi->rssical_cache.rssical_radio_regs_2G[0] =
				FUNC7(pi, RADIO_2057_NB_MASTER_CORE0);
			pi->rssical_cache.rssical_radio_regs_2G[1] =
				FUNC7(pi, RADIO_2057_NB_MASTER_CORE1);
		} else {
			pi->rssical_cache.rssical_radio_regs_2G[0] =
				FUNC7(pi,
					       RADIO_2056_RX_RSSI_MISC |
					       RADIO_2056_RX0);
			pi->rssical_cache.rssical_radio_regs_2G[1] =
				FUNC7(pi,
					       RADIO_2056_RX_RSSI_MISC |
					       RADIO_2056_RX1);
		}

		pi->rssical_cache.rssical_phyregs_2G[0] =
			FUNC6(pi, 0x1a6);
		pi->rssical_cache.rssical_phyregs_2G[1] =
			FUNC6(pi, 0x1ac);
		pi->rssical_cache.rssical_phyregs_2G[2] =
			FUNC6(pi, 0x1b2);
		pi->rssical_cache.rssical_phyregs_2G[3] =
			FUNC6(pi, 0x1b8);
		pi->rssical_cache.rssical_phyregs_2G[4] =
			FUNC6(pi, 0x1a4);
		pi->rssical_cache.rssical_phyregs_2G[5] =
			FUNC6(pi, 0x1aa);
		pi->rssical_cache.rssical_phyregs_2G[6] =
			FUNC6(pi, 0x1b0);
		pi->rssical_cache.rssical_phyregs_2G[7] =
			FUNC6(pi, 0x1b6);
		pi->rssical_cache.rssical_phyregs_2G[8] =
			FUNC6(pi, 0x1a5);
		pi->rssical_cache.rssical_phyregs_2G[9] =
			FUNC6(pi, 0x1ab);
		pi->rssical_cache.rssical_phyregs_2G[10] =
			FUNC6(pi, 0x1b1);
		pi->rssical_cache.rssical_phyregs_2G[11] =
			FUNC6(pi, 0x1b7);

		pi->nphy_rssical_chanspec_2G = pi->radio_chanspec;
	} else {
		if (FUNC2(pi->pubpi.phy_rev, 7)) {
			pi->rssical_cache.rssical_radio_regs_5G[0] =
				FUNC7(pi, RADIO_2057_NB_MASTER_CORE0);
			pi->rssical_cache.rssical_radio_regs_5G[1] =
				FUNC7(pi, RADIO_2057_NB_MASTER_CORE1);
		} else {
			pi->rssical_cache.rssical_radio_regs_5G[0] =
				FUNC7(pi,
					       RADIO_2056_RX_RSSI_MISC |
					       RADIO_2056_RX0);
			pi->rssical_cache.rssical_radio_regs_5G[1] =
				FUNC7(pi,
					       RADIO_2056_RX_RSSI_MISC |
					       RADIO_2056_RX1);
		}

		pi->rssical_cache.rssical_phyregs_5G[0] =
			FUNC6(pi, 0x1a6);
		pi->rssical_cache.rssical_phyregs_5G[1] =
			FUNC6(pi, 0x1ac);
		pi->rssical_cache.rssical_phyregs_5G[2] =
			FUNC6(pi, 0x1b2);
		pi->rssical_cache.rssical_phyregs_5G[3] =
			FUNC6(pi, 0x1b8);
		pi->rssical_cache.rssical_phyregs_5G[4] =
			FUNC6(pi, 0x1a4);
		pi->rssical_cache.rssical_phyregs_5G[5] =
			FUNC6(pi, 0x1aa);
		pi->rssical_cache.rssical_phyregs_5G[6] =
			FUNC6(pi, 0x1b0);
		pi->rssical_cache.rssical_phyregs_5G[7] =
			FUNC6(pi, 0x1b6);
		pi->rssical_cache.rssical_phyregs_5G[8] =
			FUNC6(pi, 0x1a5);
		pi->rssical_cache.rssical_phyregs_5G[9] =
			FUNC6(pi, 0x1ab);
		pi->rssical_cache.rssical_phyregs_5G[10] =
			FUNC6(pi, 0x1b1);
		pi->rssical_cache.rssical_phyregs_5G[11] =
			FUNC6(pi, 0x1b7);

		pi->nphy_rssical_chanspec_5G = pi->radio_chanspec;
	}

	FUNC8(pi, (0x7 << 0), classif_state);
	FUNC9(pi, 1, clip_state);
}