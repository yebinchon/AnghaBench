#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hw {int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  iniPcieSerdesLowPower; int /*<<< orphan*/  iniPcieSerdes; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  iniModesRxGain; int /*<<< orphan*/ * iniSOC; int /*<<< orphan*/ * iniRadio; int /*<<< orphan*/ * iniBB; int /*<<< orphan*/ * iniMac; int /*<<< orphan*/  ini_modes_rx_gain_bounds; int /*<<< orphan*/  iniCckfirJapan2484; int /*<<< orphan*/  ini_radio_post_sys2ant; int /*<<< orphan*/  iniAdditional; scalar_t__ is_clk_25mhz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ FUNC7 (struct ath_hw*) ; 
 size_t ATH_INI_CORE ; 
 size_t ATH_INI_POST ; 
 size_t ATH_INI_PRE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar9300Common_rx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9300Modes_fast_clock_2p2 ; 
 int /*<<< orphan*/  ar9300Modes_lowest_ob_db_tx_gain_table_2p2 ; 
 int /*<<< orphan*/  ar9300PciePhy_pll_on_clkreq_disable_L1_2p2 ; 
 int /*<<< orphan*/  ar9300_2p2_baseband_core ; 
 int /*<<< orphan*/  ar9300_2p2_baseband_postamble ; 
 int /*<<< orphan*/  ar9300_2p2_mac_core ; 
 int /*<<< orphan*/  ar9300_2p2_mac_postamble ; 
 int /*<<< orphan*/  ar9300_2p2_radio_core ; 
 int /*<<< orphan*/  ar9300_2p2_radio_postamble ; 
 int /*<<< orphan*/  ar9300_2p2_soc_postamble ; 
 int /*<<< orphan*/  ar9300_2p2_soc_preamble ; 
 int /*<<< orphan*/  ar9331_1p1_baseband_core ; 
 int /*<<< orphan*/  ar9331_1p1_baseband_core_txfir_coeff_japan_2484 ; 
 int /*<<< orphan*/  ar9331_1p1_baseband_postamble ; 
 int /*<<< orphan*/  ar9331_1p1_mac_core ; 
 int /*<<< orphan*/  ar9331_1p1_mac_postamble ; 
 int /*<<< orphan*/  ar9331_1p1_radio_core ; 
 int /*<<< orphan*/  ar9331_1p1_soc_postamble ; 
 int /*<<< orphan*/  ar9331_1p1_soc_preamble ; 
 int /*<<< orphan*/  ar9331_1p1_xtal_25M ; 
 int /*<<< orphan*/  ar9331_1p1_xtal_40M ; 
 int /*<<< orphan*/  ar9331_1p2_baseband_core ; 
 int /*<<< orphan*/  ar9331_1p2_baseband_core_txfir_coeff_japan_2484 ; 
 int /*<<< orphan*/  ar9331_1p2_baseband_postamble ; 
 int /*<<< orphan*/  ar9331_1p2_mac_core ; 
 int /*<<< orphan*/  ar9331_1p2_mac_postamble ; 
 int /*<<< orphan*/  ar9331_1p2_radio_core ; 
 int /*<<< orphan*/  ar9331_1p2_soc_postamble ; 
 int /*<<< orphan*/  ar9331_1p2_soc_preamble ; 
 int /*<<< orphan*/  ar9331_1p2_xtal_25M ; 
 int /*<<< orphan*/  ar9331_1p2_xtal_40M ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_common_rx_gain_1p2 ; 
 int /*<<< orphan*/  ar9331_modes_lowest_ob_db_tx_gain_1p1 ; 
 int /*<<< orphan*/  ar9331_modes_lowest_ob_db_tx_gain_1p2 ; 
 int /*<<< orphan*/  ar9340Common_wo_xlna_rx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9340Modes_fast_clock_1p0 ; 
 int /*<<< orphan*/  ar9340Modes_high_ob_db_tx_gain_table_1p0 ; 
 int /*<<< orphan*/  ar9340_1p0_baseband_core ; 
 int /*<<< orphan*/  ar9340_1p0_baseband_postamble ; 
 int /*<<< orphan*/  ar9340_1p0_mac_core ; 
 int /*<<< orphan*/  ar9340_1p0_mac_postamble ; 
 int /*<<< orphan*/  ar9340_1p0_radio_core ; 
 int /*<<< orphan*/  ar9340_1p0_radio_core_40M ; 
 int /*<<< orphan*/  ar9340_1p0_radio_postamble ; 
 int /*<<< orphan*/  ar9340_1p0_soc_postamble ; 
 int /*<<< orphan*/  ar9340_1p0_soc_preamble ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_core ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_core_txfir_coeff_japan_2484 ; 
 int /*<<< orphan*/  ar9462_2p0_baseband_postamble ; 
 int /*<<< orphan*/  ar9462_2p0_mac_core ; 
 int /*<<< orphan*/  ar9462_2p0_mac_postamble ; 
 int /*<<< orphan*/  ar9462_2p0_radio_core ; 
 int /*<<< orphan*/  ar9462_2p0_radio_postamble ; 
 int /*<<< orphan*/  ar9462_2p0_radio_postamble_sys2ant ; 
 int /*<<< orphan*/  ar9462_2p0_soc_postamble ; 
 int /*<<< orphan*/  ar9462_2p0_soc_preamble ; 
 int /*<<< orphan*/  ar9462_common_rx_gain_table_2p0 ; 
 int /*<<< orphan*/  ar9462_modes_fast_clock_2p0 ; 
 int /*<<< orphan*/  ar9462_pciephy_clkreq_disable_L1_2p0 ; 
 int /*<<< orphan*/  ar9485Common_wo_xlna_rx_gain_1_1 ; 
 int /*<<< orphan*/  ar9485_1_1 ; 
 int /*<<< orphan*/  ar9485_1_1_baseband_core ; 
 int /*<<< orphan*/  ar9485_1_1_baseband_core_txfir_coeff_japan_2484 ; 
 int /*<<< orphan*/  ar9485_1_1_baseband_postamble ; 
 int /*<<< orphan*/  ar9485_1_1_mac_core ; 
 int /*<<< orphan*/  ar9485_1_1_mac_postamble ; 
 int /*<<< orphan*/  ar9485_1_1_pcie_phy_clkreq_disable_L1 ; 
 int /*<<< orphan*/  ar9485_1_1_radio_core ; 
 int /*<<< orphan*/  ar9485_1_1_radio_postamble ; 
 int /*<<< orphan*/  ar9485_1_1_soc_preamble ; 
 int /*<<< orphan*/  ar9485_modes_lowest_ob_db_tx_gain_1_1 ; 
 int /*<<< orphan*/  ar955x_1p0_baseband_core ; 
 int /*<<< orphan*/  ar955x_1p0_baseband_postamble ; 
 int /*<<< orphan*/  ar955x_1p0_common_wo_xlna_rx_gain_bounds ; 
 int /*<<< orphan*/  ar955x_1p0_common_wo_xlna_rx_gain_table ; 
 int /*<<< orphan*/  ar955x_1p0_mac_core ; 
 int /*<<< orphan*/  ar955x_1p0_mac_postamble ; 
 int /*<<< orphan*/  ar955x_1p0_modes_fast_clock ; 
 int /*<<< orphan*/  ar955x_1p0_modes_xpa_tx_gain_table ; 
 int /*<<< orphan*/  ar955x_1p0_radio_core ; 
 int /*<<< orphan*/  ar955x_1p0_radio_postamble ; 
 int /*<<< orphan*/  ar955x_1p0_soc_postamble ; 
 int /*<<< orphan*/  ar955x_1p0_soc_preamble ; 
 int /*<<< orphan*/  ar9565_1p0_Common_rx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p0_Modes_lowest_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9565_1p0_baseband_core ; 
 int /*<<< orphan*/  ar9565_1p0_baseband_postamble ; 
 int /*<<< orphan*/  ar9565_1p0_mac_core ; 
 int /*<<< orphan*/  ar9565_1p0_mac_postamble ; 
 int /*<<< orphan*/  ar9565_1p0_modes_fast_clock ; 
 int /*<<< orphan*/  ar9565_1p0_pciephy_clkreq_disable_L1 ; 
 int /*<<< orphan*/  ar9565_1p0_radio_core ; 
 int /*<<< orphan*/  ar9565_1p0_radio_postamble ; 
 int /*<<< orphan*/  ar9565_1p0_soc_postamble ; 
 int /*<<< orphan*/  ar9565_1p0_soc_preamble ; 
 int /*<<< orphan*/  ar9580_1p0_baseband_core ; 
 int /*<<< orphan*/  ar9580_1p0_baseband_postamble ; 
 int /*<<< orphan*/  ar9580_1p0_low_ob_db_tx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_mac_core ; 
 int /*<<< orphan*/  ar9580_1p0_mac_postamble ; 
 int /*<<< orphan*/  ar9580_1p0_modes_fast_clock ; 
 int /*<<< orphan*/  ar9580_1p0_radio_core ; 
 int /*<<< orphan*/  ar9580_1p0_radio_postamble ; 
 int /*<<< orphan*/  ar9580_1p0_rx_gain_table ; 
 int /*<<< orphan*/  ar9580_1p0_soc_postamble ; 
 int /*<<< orphan*/  ar9580_1p0_soc_preamble ; 

__attribute__((used)) static void FUNC9(struct ath_hw *ah)
{
	if (FUNC0(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9331_1p1_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9331_1p1_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9331_1p1_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9331_1p1_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9331_1p1_radio_core);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9331_1p1_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9331_1p1_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9331_common_rx_gain_1p1);
		FUNC8(&ah->iniModesTxGain,
				ar9331_modes_lowest_ob_db_tx_gain_1p1);

		/* Japan 2484 Mhz CCK */
		FUNC8(&ah->iniCckfirJapan2484,
			       ar9331_1p1_baseband_core_txfir_coeff_japan_2484);

		/* additional clock settings */
		if (ah->is_clk_25mhz)
			FUNC8(&ah->iniAdditional,
					ar9331_1p1_xtal_25M);
		else
			FUNC8(&ah->iniAdditional,
					ar9331_1p1_xtal_40M);
	} else if (FUNC1(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9331_1p2_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9331_1p2_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9331_1p2_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9331_1p2_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9331_1p2_radio_core);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9331_1p2_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9331_1p2_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9331_common_rx_gain_1p2);
		FUNC8(&ah->iniModesTxGain,
				ar9331_modes_lowest_ob_db_tx_gain_1p2);

		/* Japan 2484 Mhz CCK */
		FUNC8(&ah->iniCckfirJapan2484,
			       ar9331_1p2_baseband_core_txfir_coeff_japan_2484);

		/* additional clock settings */
		if (ah->is_clk_25mhz)
			FUNC8(&ah->iniAdditional,
					ar9331_1p2_xtal_25M);
		else
			FUNC8(&ah->iniAdditional,
					ar9331_1p2_xtal_40M);
	} else if (FUNC2(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9340_1p0_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9340_1p0_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9340_1p0_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9340_1p0_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9340_1p0_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar9340_1p0_radio_postamble);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9340_1p0_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9340_1p0_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9340Common_wo_xlna_rx_gain_table_1p0);
		FUNC8(&ah->iniModesTxGain,
				ar9340Modes_high_ob_db_tx_gain_table_1p0);

		FUNC8(&ah->iniModesFastClock,
				ar9340Modes_fast_clock_1p0);

		if (!ah->is_clk_25mhz)
			FUNC8(&ah->iniAdditional,
				       ar9340_1p0_radio_core_40M);
	} else if (FUNC4(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9485_1_1_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9485_1_1_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_PRE], ar9485_1_1);
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9485_1_1_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9485_1_1_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9485_1_1_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar9485_1_1_radio_postamble);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9485_1_1_soc_preamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9485Common_wo_xlna_rx_gain_1_1);
		FUNC8(&ah->iniModesTxGain,
				ar9485_modes_lowest_ob_db_tx_gain_1_1);

		/* Japan 2484 Mhz CCK */
		FUNC8(&ah->iniCckfirJapan2484,
			       ar9485_1_1_baseband_core_txfir_coeff_japan_2484);

		/* Load PCIE SERDES settings from INI */

		/* Awake Setting */

		FUNC8(&ah->iniPcieSerdes,
				ar9485_1_1_pcie_phy_clkreq_disable_L1);

		/* Sleep Setting */

		FUNC8(&ah->iniPcieSerdesLowPower,
				ar9485_1_1_pcie_phy_clkreq_disable_L1);
	} else if (FUNC3(ah)) {

		FUNC8(&ah->iniMac[ATH_INI_CORE], ar9462_2p0_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9462_2p0_mac_postamble);

		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9462_2p0_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9462_2p0_baseband_postamble);

		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9462_2p0_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar9462_2p0_radio_postamble);
		FUNC8(&ah->ini_radio_post_sys2ant,
				ar9462_2p0_radio_postamble_sys2ant);

		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9462_2p0_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9462_2p0_soc_postamble);

		FUNC8(&ah->iniModesRxGain,
				ar9462_common_rx_gain_table_2p0);

		/* Awake -> Sleep Setting */
		FUNC8(&ah->iniPcieSerdes,
			       ar9462_pciephy_clkreq_disable_L1_2p0);
		/* Sleep -> Awake Setting */
		FUNC8(&ah->iniPcieSerdesLowPower,
			       ar9462_pciephy_clkreq_disable_L1_2p0);

		/* Fast clock modal settings */
		FUNC8(&ah->iniModesFastClock,
				ar9462_modes_fast_clock_2p0);

		FUNC8(&ah->iniCckfirJapan2484,
			       ar9462_2p0_baseband_core_txfir_coeff_japan_2484);
	} else if (FUNC5(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar955x_1p0_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar955x_1p0_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar955x_1p0_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar955x_1p0_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar955x_1p0_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar955x_1p0_radio_postamble);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar955x_1p0_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar955x_1p0_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
			ar955x_1p0_common_wo_xlna_rx_gain_table);
		FUNC8(&ah->ini_modes_rx_gain_bounds,
			ar955x_1p0_common_wo_xlna_rx_gain_bounds);
		FUNC8(&ah->iniModesTxGain,
				ar955x_1p0_modes_xpa_tx_gain_table);

		/* Fast clock modal settings */
		FUNC8(&ah->iniModesFastClock,
				ar955x_1p0_modes_fast_clock);
	} else if (FUNC7(ah)) {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9580_1p0_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9580_1p0_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9580_1p0_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9580_1p0_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9580_1p0_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar9580_1p0_radio_postamble);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9580_1p0_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9580_1p0_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9580_1p0_rx_gain_table);
		FUNC8(&ah->iniModesTxGain,
				ar9580_1p0_low_ob_db_tx_gain_table);

		FUNC8(&ah->iniModesFastClock,
				ar9580_1p0_modes_fast_clock);
	} else if (FUNC6(ah)) {
		FUNC8(&ah->iniMac[ATH_INI_CORE],
			       ar9565_1p0_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
			       ar9565_1p0_mac_postamble);

		FUNC8(&ah->iniBB[ATH_INI_CORE],
			       ar9565_1p0_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
			       ar9565_1p0_baseband_postamble);

		FUNC8(&ah->iniRadio[ATH_INI_CORE],
			       ar9565_1p0_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
			       ar9565_1p0_radio_postamble);

		FUNC8(&ah->iniSOC[ATH_INI_PRE],
			       ar9565_1p0_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
			       ar9565_1p0_soc_postamble);

		FUNC8(&ah->iniModesRxGain,
			       ar9565_1p0_Common_rx_gain_table);
		FUNC8(&ah->iniModesTxGain,
			       ar9565_1p0_Modes_lowest_ob_db_tx_gain_table);

		FUNC8(&ah->iniPcieSerdes,
			       ar9565_1p0_pciephy_clkreq_disable_L1);
		FUNC8(&ah->iniPcieSerdesLowPower,
			       ar9565_1p0_pciephy_clkreq_disable_L1);

		FUNC8(&ah->iniModesFastClock,
				ar9565_1p0_modes_fast_clock);
	} else {
		/* mac */
		FUNC8(&ah->iniMac[ATH_INI_CORE],
				ar9300_2p2_mac_core);
		FUNC8(&ah->iniMac[ATH_INI_POST],
				ar9300_2p2_mac_postamble);

		/* bb */
		FUNC8(&ah->iniBB[ATH_INI_CORE],
				ar9300_2p2_baseband_core);
		FUNC8(&ah->iniBB[ATH_INI_POST],
				ar9300_2p2_baseband_postamble);

		/* radio */
		FUNC8(&ah->iniRadio[ATH_INI_CORE],
				ar9300_2p2_radio_core);
		FUNC8(&ah->iniRadio[ATH_INI_POST],
				ar9300_2p2_radio_postamble);

		/* soc */
		FUNC8(&ah->iniSOC[ATH_INI_PRE],
				ar9300_2p2_soc_preamble);
		FUNC8(&ah->iniSOC[ATH_INI_POST],
				ar9300_2p2_soc_postamble);

		/* rx/tx gain */
		FUNC8(&ah->iniModesRxGain,
				ar9300Common_rx_gain_table_2p2);
		FUNC8(&ah->iniModesTxGain,
				ar9300Modes_lowest_ob_db_tx_gain_table_2p2);

		/* Load PCIE SERDES settings from INI */

		/* Awake Setting */

		FUNC8(&ah->iniPcieSerdes,
				ar9300PciePhy_pll_on_clkreq_disable_L1_2p2);

		/* Sleep Setting */

		FUNC8(&ah->iniPcieSerdesLowPower,
				ar9300PciePhy_pll_on_clkreq_disable_L1_2p2);

		/* Fast clock modal settings */
		FUNC8(&ah->iniModesFastClock,
				ar9300Modes_fast_clock_2p2);
	}
}