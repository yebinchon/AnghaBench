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
struct modal_eep_4k_header {int antCtrlCommon; int version; int antdiv_ctl1; int antdiv_ctl2; int ob_0; int ob_1; int ob_2; int ob_3; int ob_4; int db1_0; int db1_1; int db1_2; int db1_3; int db1_4; int db2_0; int db2_1; int db2_2; int db2_3; int db2_4; int txEndToXpaOff; int txFrameToXpaOn; int bb_scale_smrt_antenna; int /*<<< orphan*/  swSettleHt40; int /*<<< orphan*/  txFrameToPaOn; int /*<<< orphan*/  txFrameToDataStart; int /*<<< orphan*/  thresh62; int /*<<< orphan*/  txEndToRxOn; int /*<<< orphan*/  adcDesiredSize; int /*<<< orphan*/  switchSettling; } ;
struct base_eep_header_4k {int version; scalar_t__ txGainType; } ;
struct ar5416_eeprom_4k {struct base_eep_header_4k baseEepHeader; struct modal_eep_4k_header modalHeader; } ;
struct TYPE_2__ {struct ar5416_eeprom_4k map4k; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AR5416_EEP_MINOR_VER_2 ; 
 int AR5416_EEP_MINOR_VER_3 ; 
 int AR5416_EEP_VER_MINOR_MASK ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_DB_1 ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_DB_1_S ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_cck ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_cck_S ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_psk ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_psk_S ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_qam ; 
 int /*<<< orphan*/  AR9271_AN_RF2G3_OB_qam_S ; 
 int /*<<< orphan*/  AR9271_AN_RF2G4_DB_2 ; 
 int /*<<< orphan*/  AR9271_AN_RF2G4_DB_2_S ; 
 int /*<<< orphan*/  AR9280_PHY_CCA_THRESH62 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_0_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_1_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_DB1_2_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_0_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_1_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_2_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_3_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_4 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_OB_4_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB1_3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB1_3_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB1_4 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB1_4_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_0_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_1_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_2_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_3_S ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_4 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G4_DB2_4_S ; 
 int AR_PHY_9285_ANT_DIV_ALT_GAINTB ; 
 int AR_PHY_9285_ANT_DIV_ALT_LNACONF ; 
 int AR_PHY_9285_ANT_DIV_CTL ; 
 int AR_PHY_9285_ANT_DIV_CTL_ALL ; 
 int AR_PHY_9285_ANT_DIV_MAIN_GAINTB ; 
 int AR_PHY_9285_ANT_DIV_MAIN_LNACONF ; 
 int /*<<< orphan*/  AR_PHY_CCA ; 
 int /*<<< orphan*/  AR_PHY_CCK_DETECT ; 
 int AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV ; 
 int /*<<< orphan*/  AR_PHY_CH0_TX_PWRCTRL11 ; 
 int /*<<< orphan*/  AR_PHY_CH0_TX_PWRCTRL12 ; 
 int /*<<< orphan*/  AR_PHY_CH0_TX_PWRCTRL13 ; 
 int /*<<< orphan*/  AR_PHY_DESIRED_SZ ; 
 int /*<<< orphan*/  AR_PHY_DESIRED_SZ_ADC ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA0 ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA0_THRESH62 ; 
 int /*<<< orphan*/  AR_PHY_MULTICHAIN_GAIN_CTL ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL2 ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL3 ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL4 ; 
 int AR_PHY_RF_CTL4_FRAME_XPAA_ON ; 
 int AR_PHY_RF_CTL4_FRAME_XPAB_ON ; 
 int AR_PHY_RF_CTL4_TX_END_XPAA_OFF ; 
 int AR_PHY_RF_CTL4_TX_END_XPAB_OFF ; 
 int /*<<< orphan*/  AR_PHY_SETTLING ; 
 int /*<<< orphan*/  AR_PHY_SETTLING_SWITCH ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_COM ; 
 int /*<<< orphan*/  AR_PHY_TX_END_DATA_START ; 
 int /*<<< orphan*/  AR_PHY_TX_END_PA_ON ; 
 int /*<<< orphan*/  AR_PHY_TX_END_TO_A2_RX_ON ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL10 ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL8 ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL9 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int FUNC2 (int) ; 
 int EEP_4K_BB_DESIRED_SCALE_MASK ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct modal_eep_4k_header*,struct ar5416_eeprom_4k*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	struct modal_eep_4k_header *pModal;
	struct ar5416_eeprom_4k *eep = &ah->eeprom.map4k;
	struct base_eep_header_4k *pBase = &eep->baseEepHeader;
	u8 txRxAttenLocal;
	u8 ob[5], db1[5], db2[5];
	u8 ant_div_control1, ant_div_control2;
	u8 bb_desired_scale;
	u32 regVal;

	pModal = &eep->modalHeader;
	txRxAttenLocal = 23;

	FUNC7(ah, AR_PHY_SWITCH_COM, pModal->antCtrlCommon);

	/* Single chain for 4K EEPROM*/
	FUNC9(ah, pModal, eep, txRxAttenLocal);

	/* Initialize Ant Diversity settings from EEPROM */
	if (pModal->version >= 3) {
		ant_div_control1 = pModal->antdiv_ctl1;
		ant_div_control2 = pModal->antdiv_ctl2;

		regVal = FUNC4(ah, AR_PHY_MULTICHAIN_GAIN_CTL);
		regVal &= (~(AR_PHY_9285_ANT_DIV_CTL_ALL));

		regVal |= FUNC8(ant_div_control1,
			     AR_PHY_9285_ANT_DIV_CTL);
		regVal |= FUNC8(ant_div_control2,
			     AR_PHY_9285_ANT_DIV_ALT_LNACONF);
		regVal |= FUNC8((ant_div_control2 >> 2),
			     AR_PHY_9285_ANT_DIV_MAIN_LNACONF);
		regVal |= FUNC8((ant_div_control1 >> 1),
			     AR_PHY_9285_ANT_DIV_ALT_GAINTB);
		regVal |= FUNC8((ant_div_control1 >> 2),
			     AR_PHY_9285_ANT_DIV_MAIN_GAINTB);


		FUNC7(ah, AR_PHY_MULTICHAIN_GAIN_CTL, regVal);
		regVal = FUNC4(ah, AR_PHY_MULTICHAIN_GAIN_CTL);
		regVal = FUNC4(ah, AR_PHY_CCK_DETECT);
		regVal &= (~AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV);
		regVal |= FUNC8((ant_div_control1 >> 3),
			     AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV);

		FUNC7(ah, AR_PHY_CCK_DETECT, regVal);
		regVal = FUNC4(ah, AR_PHY_CCK_DETECT);
	}

	if (pModal->version >= 2) {
		ob[0] = pModal->ob_0;
		ob[1] = pModal->ob_1;
		ob[2] = pModal->ob_2;
		ob[3] = pModal->ob_3;
		ob[4] = pModal->ob_4;

		db1[0] = pModal->db1_0;
		db1[1] = pModal->db1_1;
		db1[2] = pModal->db1_2;
		db1[3] = pModal->db1_3;
		db1[4] = pModal->db1_4;

		db2[0] = pModal->db2_0;
		db2[1] = pModal->db2_1;
		db2[2] = pModal->db2_2;
		db2[3] = pModal->db2_3;
		db2[4] = pModal->db2_4;
	} else if (pModal->version == 1) {
		ob[0] = pModal->ob_0;
		ob[1] = ob[2] = ob[3] = ob[4] = pModal->ob_1;
		db1[0] = pModal->db1_0;
		db1[1] = db1[2] = db1[3] = db1[4] = pModal->db1_1;
		db2[0] = pModal->db2_0;
		db2[1] = db2[2] = db2[3] = db2[4] = pModal->db2_1;
	} else {
		int i;

		for (i = 0; i < 5; i++) {
			ob[i] = pModal->ob_0;
			db1[i] = pModal->db1_0;
			db2[i] = pModal->db1_0;
		}
	}

	if (FUNC0(ah)) {
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9271_AN_RF2G3_OB_cck,
					  AR9271_AN_RF2G3_OB_cck_S,
					  ob[0]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9271_AN_RF2G3_OB_psk,
					  AR9271_AN_RF2G3_OB_psk_S,
					  ob[1]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9271_AN_RF2G3_OB_qam,
					  AR9271_AN_RF2G3_OB_qam_S,
					  ob[2]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9271_AN_RF2G3_DB_1,
					  AR9271_AN_RF2G3_DB_1_S,
					  db1[0]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9271_AN_RF2G4_DB_2,
					  AR9271_AN_RF2G4_DB_2_S,
					  db2[0]);
	} else {
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_OB_0,
					  AR9285_AN_RF2G3_OB_0_S,
					  ob[0]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_OB_1,
					  AR9285_AN_RF2G3_OB_1_S,
					  ob[1]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_OB_2,
					  AR9285_AN_RF2G3_OB_2_S,
					  ob[2]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_OB_3,
					  AR9285_AN_RF2G3_OB_3_S,
					  ob[3]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_OB_4,
					  AR9285_AN_RF2G3_OB_4_S,
					  ob[4]);

		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_DB1_0,
					  AR9285_AN_RF2G3_DB1_0_S,
					  db1[0]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_DB1_1,
					  AR9285_AN_RF2G3_DB1_1_S,
					  db1[1]);
		FUNC10(ah,
					  AR9285_AN_RF2G3,
					  AR9285_AN_RF2G3_DB1_2,
					  AR9285_AN_RF2G3_DB1_2_S,
					  db1[2]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB1_3,
					  AR9285_AN_RF2G4_DB1_3_S,
					  db1[3]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB1_4,
					  AR9285_AN_RF2G4_DB1_4_S, db1[4]);

		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB2_0,
					  AR9285_AN_RF2G4_DB2_0_S,
					  db2[0]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB2_1,
					  AR9285_AN_RF2G4_DB2_1_S,
					  db2[1]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB2_2,
					  AR9285_AN_RF2G4_DB2_2_S,
					  db2[2]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB2_3,
					  AR9285_AN_RF2G4_DB2_3_S,
					  db2[3]);
		FUNC10(ah,
					  AR9285_AN_RF2G4,
					  AR9285_AN_RF2G4_DB2_4,
					  AR9285_AN_RF2G4_DB2_4_S,
					  db2[4]);
	}


	FUNC6(ah, AR_PHY_SETTLING, AR_PHY_SETTLING_SWITCH,
		      pModal->switchSettling);
	FUNC6(ah, AR_PHY_DESIRED_SZ, AR_PHY_DESIRED_SZ_ADC,
		      pModal->adcDesiredSize);

	FUNC7(ah, AR_PHY_RF_CTL4,
		  FUNC8(pModal->txEndToXpaOff, AR_PHY_RF_CTL4_TX_END_XPAA_OFF) |
		  FUNC8(pModal->txEndToXpaOff, AR_PHY_RF_CTL4_TX_END_XPAB_OFF) |
		  FUNC8(pModal->txFrameToXpaOn, AR_PHY_RF_CTL4_FRAME_XPAA_ON)  |
		  FUNC8(pModal->txFrameToXpaOn, AR_PHY_RF_CTL4_FRAME_XPAB_ON));

	FUNC6(ah, AR_PHY_RF_CTL3, AR_PHY_TX_END_TO_A2_RX_ON,
		      pModal->txEndToRxOn);

	if (FUNC1(ah))
		FUNC6(ah, AR_PHY_RF_CTL3, AR_PHY_TX_END_TO_A2_RX_ON,
			      pModal->txEndToRxOn);
	FUNC6(ah, AR_PHY_CCA, AR9280_PHY_CCA_THRESH62,
		      pModal->thresh62);
	FUNC6(ah, AR_PHY_EXT_CCA0, AR_PHY_EXT_CCA0_THRESH62,
		      pModal->thresh62);

	if ((eep->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
						AR5416_EEP_MINOR_VER_2) {
		FUNC6(ah, AR_PHY_RF_CTL2, AR_PHY_TX_END_DATA_START,
			      pModal->txFrameToDataStart);
		FUNC6(ah, AR_PHY_RF_CTL2, AR_PHY_TX_END_PA_ON,
			      pModal->txFrameToPaOn);
	}

	if ((eep->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
						AR5416_EEP_MINOR_VER_3) {
		if (FUNC3(chan))
			FUNC6(ah, AR_PHY_SETTLING,
				      AR_PHY_SETTLING_SWITCH,
				      pModal->swSettleHt40);
	}

	bb_desired_scale = (pModal->bb_scale_smrt_antenna &
			EEP_4K_BB_DESIRED_SCALE_MASK);
	if ((pBase->txGainType == 0) && (bb_desired_scale != 0)) {
		u32 pwrctrl, mask, clr;

		mask = FUNC2(0)|FUNC2(5)|FUNC2(10)|FUNC2(15)|FUNC2(20)|FUNC2(25);
		pwrctrl = mask * bb_desired_scale;
		clr = mask * 0x1f;
		FUNC5(ah, AR_PHY_TX_PWRCTRL8, pwrctrl, clr);
		FUNC5(ah, AR_PHY_TX_PWRCTRL10, pwrctrl, clr);
		FUNC5(ah, AR_PHY_CH0_TX_PWRCTRL12, pwrctrl, clr);

		mask = FUNC2(0)|FUNC2(5)|FUNC2(15);
		pwrctrl = mask * bb_desired_scale;
		clr = mask * 0x1f;
		FUNC5(ah, AR_PHY_TX_PWRCTRL9, pwrctrl, clr);

		mask = FUNC2(0)|FUNC2(5);
		pwrctrl = mask * bb_desired_scale;
		clr = mask * 0x1f;
		FUNC5(ah, AR_PHY_CH0_TX_PWRCTRL11, pwrctrl, clr);
		FUNC5(ah, AR_PHY_CH0_TX_PWRCTRL13, pwrctrl, clr);
	}
}