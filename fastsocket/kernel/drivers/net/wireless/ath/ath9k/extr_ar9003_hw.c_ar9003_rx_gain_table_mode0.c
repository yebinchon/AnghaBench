
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesRxGain; int ini_modes_rx_gain_bounds; } ;


 scalar_t__ AR_SREV_9330_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330_12 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485_11 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9300Common_rx_gain_table_2p2 ;
 int ar9331_common_rx_gain_1p1 ;
 int ar9331_common_rx_gain_1p2 ;
 int ar9340Common_rx_gain_table_1p0 ;
 int ar9462_common_rx_gain_table_2p0 ;
 int ar9485_common_rx_gain_1_1 ;
 int ar955x_1p0_common_rx_gain_bounds ;
 int ar955x_1p0_common_rx_gain_table ;
 int ar9580_1p0_rx_gain_table ;

__attribute__((used)) static void ar9003_rx_gain_table_mode0(struct ath_hw *ah)
{
 if (AR_SREV_9330_12(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9331_common_rx_gain_1p2);
 else if (AR_SREV_9330_11(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9331_common_rx_gain_1p1);
 else if (AR_SREV_9340(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9340Common_rx_gain_table_1p0);
 else if (AR_SREV_9485_11(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
          ar9485_common_rx_gain_1_1);
 else if (AR_SREV_9550(ah)) {
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar955x_1p0_common_rx_gain_table);
  INIT_INI_ARRAY(&ah->ini_modes_rx_gain_bounds,
    ar955x_1p0_common_rx_gain_bounds);
 } else if (AR_SREV_9580(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9580_1p0_rx_gain_table);
 else if (AR_SREV_9462_20(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9462_common_rx_gain_table_2p0);
 else
  INIT_INI_ARRAY(&ah->iniModesRxGain,
    ar9300Common_rx_gain_table_2p2);
}
