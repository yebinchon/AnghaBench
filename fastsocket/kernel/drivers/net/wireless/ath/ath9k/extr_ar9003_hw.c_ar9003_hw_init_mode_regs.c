
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesFastClock; int iniPcieSerdesLowPower; int iniPcieSerdes; int iniModesTxGain; int iniModesRxGain; int * iniSOC; int * iniRadio; int * iniBB; int * iniMac; int ini_modes_rx_gain_bounds; int iniCckfirJapan2484; int ini_radio_post_sys2ant; int iniAdditional; scalar_t__ is_clk_25mhz; } ;


 scalar_t__ AR_SREV_9330_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330_12 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 size_t ATH_INI_CORE ;
 size_t ATH_INI_POST ;
 size_t ATH_INI_PRE ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9300Common_rx_gain_table_2p2 ;
 int ar9300Modes_fast_clock_2p2 ;
 int ar9300Modes_lowest_ob_db_tx_gain_table_2p2 ;
 int ar9300PciePhy_pll_on_clkreq_disable_L1_2p2 ;
 int ar9300_2p2_baseband_core ;
 int ar9300_2p2_baseband_postamble ;
 int ar9300_2p2_mac_core ;
 int ar9300_2p2_mac_postamble ;
 int ar9300_2p2_radio_core ;
 int ar9300_2p2_radio_postamble ;
 int ar9300_2p2_soc_postamble ;
 int ar9300_2p2_soc_preamble ;
 int ar9331_1p1_baseband_core ;
 int ar9331_1p1_baseband_core_txfir_coeff_japan_2484 ;
 int ar9331_1p1_baseband_postamble ;
 int ar9331_1p1_mac_core ;
 int ar9331_1p1_mac_postamble ;
 int ar9331_1p1_radio_core ;
 int ar9331_1p1_soc_postamble ;
 int ar9331_1p1_soc_preamble ;
 int ar9331_1p1_xtal_25M ;
 int ar9331_1p1_xtal_40M ;
 int ar9331_1p2_baseband_core ;
 int ar9331_1p2_baseband_core_txfir_coeff_japan_2484 ;
 int ar9331_1p2_baseband_postamble ;
 int ar9331_1p2_mac_core ;
 int ar9331_1p2_mac_postamble ;
 int ar9331_1p2_radio_core ;
 int ar9331_1p2_soc_postamble ;
 int ar9331_1p2_soc_preamble ;
 int ar9331_1p2_xtal_25M ;
 int ar9331_1p2_xtal_40M ;
 int ar9331_common_rx_gain_1p1 ;
 int ar9331_common_rx_gain_1p2 ;
 int ar9331_modes_lowest_ob_db_tx_gain_1p1 ;
 int ar9331_modes_lowest_ob_db_tx_gain_1p2 ;
 int ar9340Common_wo_xlna_rx_gain_table_1p0 ;
 int ar9340Modes_fast_clock_1p0 ;
 int ar9340Modes_high_ob_db_tx_gain_table_1p0 ;
 int ar9340_1p0_baseband_core ;
 int ar9340_1p0_baseband_postamble ;
 int ar9340_1p0_mac_core ;
 int ar9340_1p0_mac_postamble ;
 int ar9340_1p0_radio_core ;
 int ar9340_1p0_radio_core_40M ;
 int ar9340_1p0_radio_postamble ;
 int ar9340_1p0_soc_postamble ;
 int ar9340_1p0_soc_preamble ;
 int ar9462_2p0_baseband_core ;
 int ar9462_2p0_baseband_core_txfir_coeff_japan_2484 ;
 int ar9462_2p0_baseband_postamble ;
 int ar9462_2p0_mac_core ;
 int ar9462_2p0_mac_postamble ;
 int ar9462_2p0_radio_core ;
 int ar9462_2p0_radio_postamble ;
 int ar9462_2p0_radio_postamble_sys2ant ;
 int ar9462_2p0_soc_postamble ;
 int ar9462_2p0_soc_preamble ;
 int ar9462_common_rx_gain_table_2p0 ;
 int ar9462_modes_fast_clock_2p0 ;
 int ar9462_pciephy_clkreq_disable_L1_2p0 ;
 int ar9485Common_wo_xlna_rx_gain_1_1 ;
 int ar9485_1_1 ;
 int ar9485_1_1_baseband_core ;
 int ar9485_1_1_baseband_core_txfir_coeff_japan_2484 ;
 int ar9485_1_1_baseband_postamble ;
 int ar9485_1_1_mac_core ;
 int ar9485_1_1_mac_postamble ;
 int ar9485_1_1_pcie_phy_clkreq_disable_L1 ;
 int ar9485_1_1_radio_core ;
 int ar9485_1_1_radio_postamble ;
 int ar9485_1_1_soc_preamble ;
 int ar9485_modes_lowest_ob_db_tx_gain_1_1 ;
 int ar955x_1p0_baseband_core ;
 int ar955x_1p0_baseband_postamble ;
 int ar955x_1p0_common_wo_xlna_rx_gain_bounds ;
 int ar955x_1p0_common_wo_xlna_rx_gain_table ;
 int ar955x_1p0_mac_core ;
 int ar955x_1p0_mac_postamble ;
 int ar955x_1p0_modes_fast_clock ;
 int ar955x_1p0_modes_xpa_tx_gain_table ;
 int ar955x_1p0_radio_core ;
 int ar955x_1p0_radio_postamble ;
 int ar955x_1p0_soc_postamble ;
 int ar955x_1p0_soc_preamble ;
 int ar9565_1p0_Common_rx_gain_table ;
 int ar9565_1p0_Modes_lowest_ob_db_tx_gain_table ;
 int ar9565_1p0_baseband_core ;
 int ar9565_1p0_baseband_postamble ;
 int ar9565_1p0_mac_core ;
 int ar9565_1p0_mac_postamble ;
 int ar9565_1p0_modes_fast_clock ;
 int ar9565_1p0_pciephy_clkreq_disable_L1 ;
 int ar9565_1p0_radio_core ;
 int ar9565_1p0_radio_postamble ;
 int ar9565_1p0_soc_postamble ;
 int ar9565_1p0_soc_preamble ;
 int ar9580_1p0_baseband_core ;
 int ar9580_1p0_baseband_postamble ;
 int ar9580_1p0_low_ob_db_tx_gain_table ;
 int ar9580_1p0_mac_core ;
 int ar9580_1p0_mac_postamble ;
 int ar9580_1p0_modes_fast_clock ;
 int ar9580_1p0_radio_core ;
 int ar9580_1p0_radio_postamble ;
 int ar9580_1p0_rx_gain_table ;
 int ar9580_1p0_soc_postamble ;
 int ar9580_1p0_soc_preamble ;

__attribute__((used)) static void ar9003_hw_init_mode_regs(struct ath_hw *ah)
{
 if (AR_SREV_9330_11(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9331_1p1_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9331_1p1_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9331_1p1_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9331_1p1_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9331_1p1_radio_core);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9331_1p1_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9331_1p1_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9331_common_rx_gain_1p1);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9331_modes_lowest_ob_db_tx_gain_1p1);


  INIT_INI_ARRAY(&ah->iniCckfirJapan2484,
          ar9331_1p1_baseband_core_txfir_coeff_japan_2484);


  if (ah->is_clk_25mhz)
   INIT_INI_ARRAY(&ah->iniAdditional,
     ar9331_1p1_xtal_25M);
  else
   INIT_INI_ARRAY(&ah->iniAdditional,
     ar9331_1p1_xtal_40M);
 } else if (AR_SREV_9330_12(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9331_1p2_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9331_1p2_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9331_1p2_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9331_1p2_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9331_1p2_radio_core);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9331_1p2_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9331_1p2_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9331_common_rx_gain_1p2);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9331_modes_lowest_ob_db_tx_gain_1p2);


  INIT_INI_ARRAY(&ah->iniCckfirJapan2484,
          ar9331_1p2_baseband_core_txfir_coeff_japan_2484);


  if (ah->is_clk_25mhz)
   INIT_INI_ARRAY(&ah->iniAdditional,
     ar9331_1p2_xtal_25M);
  else
   INIT_INI_ARRAY(&ah->iniAdditional,
     ar9331_1p2_xtal_40M);
 } else if (AR_SREV_9340(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9340_1p0_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9340_1p0_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9340_1p0_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9340_1p0_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9340_1p0_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar9340_1p0_radio_postamble);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9340_1p0_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9340_1p0_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9340Common_wo_xlna_rx_gain_table_1p0);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9340Modes_high_ob_db_tx_gain_table_1p0);

  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar9340Modes_fast_clock_1p0);

  if (!ah->is_clk_25mhz)
   INIT_INI_ARRAY(&ah->iniAdditional,
           ar9340_1p0_radio_core_40M);
 } else if (AR_SREV_9485_11(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9485_1_1_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9485_1_1_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_PRE], ar9485_1_1);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9485_1_1_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9485_1_1_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9485_1_1_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar9485_1_1_radio_postamble);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9485_1_1_soc_preamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9485Common_wo_xlna_rx_gain_1_1);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9485_modes_lowest_ob_db_tx_gain_1_1);


  INIT_INI_ARRAY(&ah->iniCckfirJapan2484,
          ar9485_1_1_baseband_core_txfir_coeff_japan_2484);





  INIT_INI_ARRAY(&ah->iniPcieSerdes,
    ar9485_1_1_pcie_phy_clkreq_disable_L1);



  INIT_INI_ARRAY(&ah->iniPcieSerdesLowPower,
    ar9485_1_1_pcie_phy_clkreq_disable_L1);
 } else if (AR_SREV_9462_20(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE], ar9462_2p0_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9462_2p0_mac_postamble);

  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9462_2p0_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9462_2p0_baseband_postamble);

  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9462_2p0_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar9462_2p0_radio_postamble);
  INIT_INI_ARRAY(&ah->ini_radio_post_sys2ant,
    ar9462_2p0_radio_postamble_sys2ant);

  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9462_2p0_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9462_2p0_soc_postamble);

  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9462_common_rx_gain_table_2p0);


  INIT_INI_ARRAY(&ah->iniPcieSerdes,
          ar9462_pciephy_clkreq_disable_L1_2p0);

  INIT_INI_ARRAY(&ah->iniPcieSerdesLowPower,
          ar9462_pciephy_clkreq_disable_L1_2p0);


  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar9462_modes_fast_clock_2p0);

  INIT_INI_ARRAY(&ah->iniCckfirJapan2484,
          ar9462_2p0_baseband_core_txfir_coeff_japan_2484);
 } else if (AR_SREV_9550(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar955x_1p0_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar955x_1p0_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar955x_1p0_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar955x_1p0_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar955x_1p0_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar955x_1p0_radio_postamble);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar955x_1p0_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar955x_1p0_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
   ar955x_1p0_common_wo_xlna_rx_gain_table);
  INIT_INI_ARRAY(&ah->ini_modes_rx_gain_bounds,
   ar955x_1p0_common_wo_xlna_rx_gain_bounds);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar955x_1p0_modes_xpa_tx_gain_table);


  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar955x_1p0_modes_fast_clock);
 } else if (AR_SREV_9580(ah)) {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9580_1p0_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9580_1p0_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9580_1p0_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9580_1p0_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9580_1p0_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar9580_1p0_radio_postamble);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9580_1p0_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9580_1p0_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9580_1p0_rx_gain_table);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9580_1p0_low_ob_db_tx_gain_table);

  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar9580_1p0_modes_fast_clock);
 } else if (AR_SREV_9565(ah)) {
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
          ar9565_1p0_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
          ar9565_1p0_mac_postamble);

  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
          ar9565_1p0_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
          ar9565_1p0_baseband_postamble);

  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
          ar9565_1p0_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
          ar9565_1p0_radio_postamble);

  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
          ar9565_1p0_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
          ar9565_1p0_soc_postamble);

  INIT_INI_ARRAY(&ah->iniModesRxGain,
          ar9565_1p0_Common_rx_gain_table);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
          ar9565_1p0_Modes_lowest_ob_db_tx_gain_table);

  INIT_INI_ARRAY(&ah->iniPcieSerdes,
          ar9565_1p0_pciephy_clkreq_disable_L1);
  INIT_INI_ARRAY(&ah->iniPcieSerdesLowPower,
          ar9565_1p0_pciephy_clkreq_disable_L1);

  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar9565_1p0_modes_fast_clock);
 } else {

  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_CORE],
    ar9300_2p2_mac_core);
  INIT_INI_ARRAY(&ah->iniMac[ATH_INI_POST],
    ar9300_2p2_mac_postamble);


  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_CORE],
    ar9300_2p2_baseband_core);
  INIT_INI_ARRAY(&ah->iniBB[ATH_INI_POST],
    ar9300_2p2_baseband_postamble);


  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_CORE],
    ar9300_2p2_radio_core);
  INIT_INI_ARRAY(&ah->iniRadio[ATH_INI_POST],
    ar9300_2p2_radio_postamble);


  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_PRE],
    ar9300_2p2_soc_preamble);
  INIT_INI_ARRAY(&ah->iniSOC[ATH_INI_POST],
    ar9300_2p2_soc_postamble);


  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9300Common_rx_gain_table_2p2);
  INIT_INI_ARRAY(&ah->iniModesTxGain,
    ar9300Modes_lowest_ob_db_tx_gain_table_2p2);





  INIT_INI_ARRAY(&ah->iniPcieSerdes,
    ar9300PciePhy_pll_on_clkreq_disable_L1_2p2);



  INIT_INI_ARRAY(&ah->iniPcieSerdesLowPower,
    ar9300PciePhy_pll_on_clkreq_disable_L1_2p2);


  INIT_INI_ARRAY(&ah->iniModesFastClock,
    ar9300Modes_fast_clock_2p2);
 }
}
