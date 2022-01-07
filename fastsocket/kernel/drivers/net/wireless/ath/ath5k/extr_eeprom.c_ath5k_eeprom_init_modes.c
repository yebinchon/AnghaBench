
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath5k_eeprom_info {int* ee_thr_62; int ee_header; int * ee_turbo_max_power; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {scalar_t__ ah_ee_version; TYPE_1__ ah_capabilities; } ;


 int AR5K_EEPROM_HDR_T_5GHZ_DBM (int ) ;
 int AR5K_EEPROM_MODES_11A (scalar_t__) ;
 int AR5K_EEPROM_MODES_11B (scalar_t__) ;
 int AR5K_EEPROM_MODES_11G (scalar_t__) ;
 size_t AR5K_EEPROM_MODE_11A ;
 size_t AR5K_EEPROM_MODE_11B ;
 size_t AR5K_EEPROM_MODE_11G ;
 scalar_t__ AR5K_EEPROM_VERSION_3_2 ;
 int ath5k_eeprom_read_ants (struct ath5k_hw*,int *,unsigned int) ;
 int ath5k_eeprom_read_modes (struct ath5k_hw*,int *,unsigned int) ;

__attribute__((used)) static int
ath5k_eeprom_init_modes(struct ath5k_hw *ah)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 u32 mode_offset[3];
 unsigned int mode;
 u32 offset;
 int ret;




 mode_offset[AR5K_EEPROM_MODE_11A] = AR5K_EEPROM_MODES_11A(ah->ah_ee_version);
 mode_offset[AR5K_EEPROM_MODE_11B] = AR5K_EEPROM_MODES_11B(ah->ah_ee_version);
 mode_offset[AR5K_EEPROM_MODE_11G] = AR5K_EEPROM_MODES_11G(ah->ah_ee_version);

 ee->ee_turbo_max_power[AR5K_EEPROM_MODE_11A] =
  AR5K_EEPROM_HDR_T_5GHZ_DBM(ee->ee_header);

 for (mode = AR5K_EEPROM_MODE_11A; mode <= AR5K_EEPROM_MODE_11G; mode++) {
  offset = mode_offset[mode];

  ret = ath5k_eeprom_read_ants(ah, &offset, mode);
  if (ret)
   return ret;

  ret = ath5k_eeprom_read_modes(ah, &offset, mode);
  if (ret)
   return ret;
 }


 if (ah->ah_ee_version <= AR5K_EEPROM_VERSION_3_2) {
  ee->ee_thr_62[AR5K_EEPROM_MODE_11A] = 15;
  ee->ee_thr_62[AR5K_EEPROM_MODE_11B] = 28;
  ee->ee_thr_62[AR5K_EEPROM_MODE_11G] = 28;
 }

 return 0;
}
