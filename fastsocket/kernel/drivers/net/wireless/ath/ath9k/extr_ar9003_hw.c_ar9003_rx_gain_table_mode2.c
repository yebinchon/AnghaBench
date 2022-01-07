
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesRxGain; } ;


 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9462_common_mixed_rx_gain_table_2p0 ;

__attribute__((used)) static void ar9003_rx_gain_table_mode2(struct ath_hw *ah)
{
 if (AR_SREV_9462_20(ah))
  INIT_INI_ARRAY(&ah->iniModesRxGain,
          ar9462_common_mixed_rx_gain_table_2p0);
}
