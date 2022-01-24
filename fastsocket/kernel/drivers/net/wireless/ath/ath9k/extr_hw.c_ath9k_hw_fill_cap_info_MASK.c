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
struct ath_regulatory {int current_rd; } ;
struct TYPE_3__ {scalar_t__ subvendorid; scalar_t__ devid; } ;
struct ath9k_hw_capabilities {int hw_caps; int tx_chainmask; int rx_chainmask; int rts_aggr_limit; int rx_status_len; int tx_desc_len; int txs_len; int /*<<< orphan*/  max_rxchains; int /*<<< orphan*/  max_txchains; int /*<<< orphan*/  rx_lp_qdepth; int /*<<< orphan*/  rx_hp_qdepth; int /*<<< orphan*/  num_gpio_pins; } ;
struct ath_hw {scalar_t__ opmode; int txchainmask; int rxchainmask; int rfsilent; int ent_mode; TYPE_2__* eep_ops; void* rfkill_polarity; void* rfkill_gpio; TYPE_1__ hw_version; int /*<<< orphan*/  misc_mode; struct ath9k_hw_capabilities caps; } ;
struct ath_desc {int dummy; } ;
struct ath_common {int /*<<< orphan*/  crypt_caps; } ;
struct ar9003_txs {int dummy; } ;
struct ar9003_txc {int dummy; } ;
struct ar9003_rxs {int dummy; } ;
struct TYPE_4__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AR2427_DEVID_PCIE ; 
 scalar_t__ AR5416_DEVID_PCI ; 
 int AR5416_OPFLAGS_11A ; 
 int AR5416_OPFLAGS_11G ; 
 int /*<<< orphan*/  AR7010_NUM_GPIO ; 
 int /*<<< orphan*/  AR9271_NUM_GPIO ; 
 int /*<<< orphan*/  AR9285_NUM_GPIO ; 
 int /*<<< orphan*/  AR9287_NUM_GPIO ; 
 int /*<<< orphan*/  AR928X_NUM_GPIO ; 
 int /*<<< orphan*/  AR9300_NUM_GPIO ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_ENT_OTP ; 
 int AR_ENT_OTP_49GHZ_DISABLE ; 
 int /*<<< orphan*/  AR_NUM_GPIO ; 
 int /*<<< orphan*/  AR_PCU_ALWAYS_PERFORM_KEYSEARCH ; 
 int /*<<< orphan*/  AR_PCU_MIC_NEW_LOC_ENA ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 scalar_t__ FUNC8 (struct ath_hw*) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 scalar_t__ FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 scalar_t__ FUNC12 (struct ath_hw*) ; 
 scalar_t__ FUNC13 (struct ath_hw*) ; 
 scalar_t__ FUNC14 (struct ath_hw*) ; 
 scalar_t__ FUNC15 (struct ath_hw*) ; 
 scalar_t__ FUNC16 (struct ath_hw*) ; 
 scalar_t__ AR_SUBVENDOR_ID_NEW_A ; 
 int ATH9K_HW_CAP_2GHZ ; 
 int ATH9K_HW_CAP_4KB_SPLITTRANS ; 
 int ATH9K_HW_CAP_5GHZ ; 
 int ATH9K_HW_CAP_ANT_DIV_COMB ; 
 int ATH9K_HW_CAP_APM ; 
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 int ATH9K_HW_CAP_DFS ; 
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_HW_CAP_FASTCLOCK ; 
 int ATH9K_HW_CAP_HT ; 
 int ATH9K_HW_CAP_LDPC ; 
 int ATH9K_HW_CAP_MCI ; 
 int ATH9K_HW_CAP_PAPRD ; 
 int ATH9K_HW_CAP_RAC_SUPPORTED ; 
 int ATH9K_HW_CAP_RFSILENT ; 
 int ATH9K_HW_CAP_RTT ; 
 int ATH9K_HW_CAP_SGI_20 ; 
 int /*<<< orphan*/  ATH9K_HW_RX_HP_QDEPTH ; 
 int /*<<< orphan*/  ATH9K_HW_RX_LP_QDEPTH ; 
 int ATH9K_HW_WOW_DEVICE_CAPABLE ; 
 int ATH9K_HW_WOW_PATTERN_MATCH_DWORD ; 
 int ATH9K_HW_WOW_PATTERN_MATCH_EXACT ; 
 int ATH_AMPDU_LIMIT_MAX ; 
 int /*<<< orphan*/  ATH_CRYPT_CAP_CIPHER_AESCCM ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEP_ANT_DIV_CTL1 ; 
 int /*<<< orphan*/  EEP_CHAIN_MASK_REDUCE ; 
 int /*<<< orphan*/  EEP_MODAL_VER ; 
 int /*<<< orphan*/  EEP_OP_MODE ; 
 int /*<<< orphan*/  EEP_PAPRD ; 
 int /*<<< orphan*/  EEP_REG_0 ; 
 int EEP_RFSILENT_ENABLED ; 
 int /*<<< orphan*/  EEP_RFSILENT_GPIO_SEL ; 
 int /*<<< orphan*/  EEP_RFSILENT_POLARITY ; 
 int /*<<< orphan*/  EEP_RF_SILENT ; 
 int /*<<< orphan*/  EEP_RX_MASK ; 
 int /*<<< orphan*/  EEP_TX_MASK ; 
 int EINVAL ; 
 void* FUNC18 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  REGULATORY ; 
 int FUNC19 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC20 (struct ath_hw*) ; 
 scalar_t__ FUNC21 (struct ath_hw*) ; 
 scalar_t__ FUNC22 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_regulatory* FUNC23 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC24 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ath_common*,char*) ; 
 void* FUNC26 (unsigned int,int) ; 
 int FUNC27 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC31 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC33 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC36 (struct ath_hw*,int /*<<< orphan*/ ) ; 

int FUNC37(struct ath_hw *ah)
{
	struct ath9k_hw_capabilities *pCap = &ah->caps;
	struct ath_regulatory *regulatory = FUNC23(ah);
	struct ath_common *common = FUNC20(ah);
	unsigned int chip_chainmask;

	u16 eeval;
	u8 ant_div_ctl1, tx_chainmask, rx_chainmask;

	eeval = ah->eep_ops->get_eeprom(ah, EEP_REG_0);
	regulatory->current_rd = eeval;

	if (ah->opmode != NL80211_IFTYPE_AP &&
	    ah->hw_version.subvendorid == AR_SUBVENDOR_ID_NEW_A) {
		if (regulatory->current_rd == 0x64 ||
		    regulatory->current_rd == 0x65)
			regulatory->current_rd += 5;
		else if (regulatory->current_rd == 0x41)
			regulatory->current_rd = 0x43;
		FUNC24(common, REGULATORY, "regdomain mapped to 0x%x\n",
			regulatory->current_rd);
	}

	eeval = ah->eep_ops->get_eeprom(ah, EEP_OP_MODE);
	if ((eeval & (AR5416_OPFLAGS_11G | AR5416_OPFLAGS_11A)) == 0) {
		FUNC25(common,
			"no band has been marked as supported in EEPROM\n");
		return -EINVAL;
	}

	if (eeval & AR5416_OPFLAGS_11A)
		pCap->hw_caps |= ATH9K_HW_CAP_5GHZ;

	if (eeval & AR5416_OPFLAGS_11G)
		pCap->hw_caps |= ATH9K_HW_CAP_2GHZ;

	if (FUNC15(ah) ||
	    FUNC7(ah) ||
	    FUNC11(ah) ||
	    FUNC16(ah))
		chip_chainmask = 1;
	else if (FUNC13(ah))
		chip_chainmask = 3;
	else if (!FUNC6(ah))
		chip_chainmask = 7;
	else if (!FUNC10(ah) || FUNC12(ah))
		chip_chainmask = 3;
	else
		chip_chainmask = 7;

	pCap->tx_chainmask = ah->eep_ops->get_eeprom(ah, EEP_TX_MASK);
	/*
	 * For AR9271 we will temporarilly uses the rx chainmax as read from
	 * the EEPROM.
	 */
	if ((ah->hw_version.devid == AR5416_DEVID_PCI) &&
	    !(eeval & AR5416_OPFLAGS_11A) &&
	    !(FUNC3(ah)))
		/* CB71: GPIO 0 is pulled down to indicate 3 rx chains */
		pCap->rx_chainmask = FUNC22(ah, 0) ? 0x5 : 0x7;
	else if (FUNC1(ah))
		pCap->rx_chainmask = 0x7;
	else
		/* Use rx_chainmask from EEPROM. */
		pCap->rx_chainmask = ah->eep_ops->get_eeprom(ah, EEP_RX_MASK);

	pCap->tx_chainmask = FUNC26(chip_chainmask, pCap->tx_chainmask);
	pCap->rx_chainmask = FUNC26(chip_chainmask, pCap->rx_chainmask);
	ah->txchainmask = pCap->tx_chainmask;
	ah->rxchainmask = pCap->rx_chainmask;

	ah->misc_mode |= AR_PCU_MIC_NEW_LOC_ENA;

	/* enable key search for every frame in an aggregate */
	if (FUNC10(ah))
		ah->misc_mode |= AR_PCU_ALWAYS_PERFORM_KEYSEARCH;

	common->crypt_caps |= ATH_CRYPT_CAP_CIPHER_AESCCM;

	if (ah->hw_version.devid != AR2427_DEVID_PCIE)
		pCap->hw_caps |= ATH9K_HW_CAP_HT;
	else
		pCap->hw_caps &= ~ATH9K_HW_CAP_HT;

	if (FUNC3(ah))
		pCap->num_gpio_pins = AR9271_NUM_GPIO;
	else if (FUNC0(ah))
		pCap->num_gpio_pins = AR7010_NUM_GPIO;
	else if (FUNC10(ah))
		pCap->num_gpio_pins = AR9300_NUM_GPIO;
	else if (FUNC9(ah))
		pCap->num_gpio_pins = AR9287_NUM_GPIO;
	else if (FUNC8(ah))
		pCap->num_gpio_pins = AR9285_NUM_GPIO;
	else if (FUNC6(ah))
		pCap->num_gpio_pins = AR928X_NUM_GPIO;
	else
		pCap->num_gpio_pins = AR_NUM_GPIO;

	if (FUNC2(ah) || FUNC1(ah))
		pCap->rts_aggr_limit = ATH_AMPDU_LIMIT_MAX;
	else
		pCap->rts_aggr_limit = (8 * 1024);

#if defined(CONFIG_RFKILL) || defined(CONFIG_RFKILL_MODULE)
	ah->rfsilent = ah->eep_ops->get_eeprom(ah, EEP_RF_SILENT);
	if (ah->rfsilent & EEP_RFSILENT_ENABLED) {
		ah->rfkill_gpio =
			MS(ah->rfsilent, EEP_RFSILENT_GPIO_SEL);
		ah->rfkill_polarity =
			MS(ah->rfsilent, EEP_RFSILENT_POLARITY);

		pCap->hw_caps |= ATH9K_HW_CAP_RFSILENT;
	}
#endif
	if (FUNC3(ah) || FUNC10(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_AUTOSLEEP;
	else
		pCap->hw_caps &= ~ATH9K_HW_CAP_AUTOSLEEP;

	if (FUNC4(ah) || FUNC7(ah))
		pCap->hw_caps &= ~ATH9K_HW_CAP_4KB_SPLITTRANS;
	else
		pCap->hw_caps |= ATH9K_HW_CAP_4KB_SPLITTRANS;

	if (FUNC10(ah)) {
		pCap->hw_caps |= ATH9K_HW_CAP_EDMA | ATH9K_HW_CAP_FASTCLOCK;
		if (!FUNC11(ah) && !FUNC15(ah) && !FUNC16(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_LDPC;

		pCap->rx_hp_qdepth = ATH9K_HW_RX_HP_QDEPTH;
		pCap->rx_lp_qdepth = ATH9K_HW_RX_LP_QDEPTH;
		pCap->rx_status_len = sizeof(struct ar9003_rxs);
		pCap->tx_desc_len = sizeof(struct ar9003_txc);
		pCap->txs_len = sizeof(struct ar9003_txs);
	} else {
		pCap->tx_desc_len = sizeof(struct ath_desc);
		if (FUNC5(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_FASTCLOCK;
	}

	if (FUNC10(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_RAC_SUPPORTED;

	if (FUNC10(ah))
		ah->ent_mode = FUNC19(ah, AR_ENT_OTP);

	if (FUNC9(ah) || FUNC3(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_SGI_20;

	if (FUNC7(ah))
		if (ah->eep_ops->get_eeprom(ah, EEP_MODAL_VER) >= 3) {
			ant_div_ctl1 =
				ah->eep_ops->get_eeprom(ah, EEP_ANT_DIV_CTL1);
			if ((ant_div_ctl1 & 0x1) && ((ant_div_ctl1 >> 3) & 0x1))
				pCap->hw_caps |= ATH9K_HW_CAP_ANT_DIV_COMB;
		}
	if (FUNC10(ah)) {
		if (ah->eep_ops->get_eeprom(ah, EEP_CHAIN_MASK_REDUCE))
			pCap->hw_caps |= ATH9K_HW_CAP_APM;
	}


	if (FUNC11(ah) || FUNC15(ah) || FUNC16(ah)) {
		ant_div_ctl1 = ah->eep_ops->get_eeprom(ah, EEP_ANT_DIV_CTL1);
		/*
		 * enable the diversity-combining algorithm only when
		 * both enable_lna_div and enable_fast_div are set
		 *		Table for Diversity
		 * ant_div_alt_lnaconf		bit 0-1
		 * ant_div_main_lnaconf		bit 2-3
		 * ant_div_alt_gaintb		bit 4
		 * ant_div_main_gaintb		bit 5
		 * enable_ant_div_lnadiv	bit 6
		 * enable_ant_fast_div		bit 7
		 */
		if ((ant_div_ctl1 >> 0x6) == 0x3)
			pCap->hw_caps |= ATH9K_HW_CAP_ANT_DIV_COMB;
	}

	if (FUNC21(ah))
		pCap->hw_caps |= ATH9K_HW_CAP_DFS;

	tx_chainmask = pCap->tx_chainmask;
	rx_chainmask = pCap->rx_chainmask;
	while (tx_chainmask || rx_chainmask) {
		if (tx_chainmask & FUNC17(0))
			pCap->max_txchains++;
		if (rx_chainmask & FUNC17(0))
			pCap->max_rxchains++;

		tx_chainmask >>= 1;
		rx_chainmask >>= 1;
	}

	if (FUNC13(ah) || FUNC16(ah)) {
		if (!(ah->ent_mode & AR_ENT_OTP_49GHZ_DISABLE))
			pCap->hw_caps |= ATH9K_HW_CAP_MCI;

		if (FUNC14(ah))
			pCap->hw_caps |= ATH9K_HW_CAP_RTT;
	}

	if (FUNC6(ah)) {
		pCap->hw_caps |= ATH9K_HW_WOW_DEVICE_CAPABLE |
				 ATH9K_HW_WOW_PATTERN_MATCH_EXACT;

		if (FUNC4(ah))
			pCap->hw_caps |= ATH9K_HW_WOW_PATTERN_MATCH_DWORD;
	}

	if (FUNC10(ah) &&
	    ah->eep_ops->get_eeprom(ah, EEP_PAPRD))
			pCap->hw_caps |= ATH9K_HW_CAP_PAPRD;

	return 0;
}