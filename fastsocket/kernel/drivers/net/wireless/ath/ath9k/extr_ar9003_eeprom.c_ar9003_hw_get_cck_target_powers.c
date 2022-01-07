
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;


 size_t ALL_TARGET_LEGACY_11L ;
 size_t ALL_TARGET_LEGACY_11S ;
 size_t ALL_TARGET_LEGACY_1L_5L ;
 size_t ALL_TARGET_LEGACY_5S ;
 int LEGACY_TARGET_RATE_11L ;
 int LEGACY_TARGET_RATE_11S ;
 int LEGACY_TARGET_RATE_1L_5L ;
 int LEGACY_TARGET_RATE_5S ;
 int ar9003_hw_eeprom_get_cck_tgt_pwr (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_hw_get_cck_target_powers(struct ath_hw *ah, u16 freq,
         u8 *targetPowerValT2)
{
 targetPowerValT2[ALL_TARGET_LEGACY_1L_5L] =
     ar9003_hw_eeprom_get_cck_tgt_pwr(ah, LEGACY_TARGET_RATE_1L_5L,
          freq);
 targetPowerValT2[ALL_TARGET_LEGACY_5S] =
     ar9003_hw_eeprom_get_cck_tgt_pwr(ah, LEGACY_TARGET_RATE_5S, freq);
 targetPowerValT2[ALL_TARGET_LEGACY_11L] =
     ar9003_hw_eeprom_get_cck_tgt_pwr(ah, LEGACY_TARGET_RATE_11L, freq);
 targetPowerValT2[ALL_TARGET_LEGACY_11S] =
     ar9003_hw_eeprom_get_cck_tgt_pwr(ah, LEGACY_TARGET_RATE_11S, freq);
}
