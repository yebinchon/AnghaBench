
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_regulatory {int max_power_level; } ;
struct ath_hw {int txchainmask; } ;
struct ath_common {int dummy; } ;


 int EEPROM ;
 int POWER_CORRECTION_FOR_THREE_CHAIN ;
 int POWER_CORRECTION_FOR_TWO_CHAIN ;
 int ar5416_get_ntxchains (int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 struct ath_regulatory* ath9k_hw_regulatory (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_hw_update_regulatory_maxpower(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_regulatory *regulatory = ath9k_hw_regulatory(ah);

 switch (ar5416_get_ntxchains(ah->txchainmask)) {
 case 1:
  break;
 case 2:
  regulatory->max_power_level += POWER_CORRECTION_FOR_TWO_CHAIN;
  break;
 case 3:
  regulatory->max_power_level += POWER_CORRECTION_FOR_THREE_CHAIN;
  break;
 default:
  ath_dbg(common, EEPROM, "Invalid chainmask configuration\n");
  break;
 }
}
