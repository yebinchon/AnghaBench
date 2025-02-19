
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ath5k_rate_pcal_info {scalar_t__ freq; int target_power_6to24; int target_power_36; int target_power_48; int target_power_54; } ;
struct ath5k_eeprom_info {int* ee_rate_target_pwr_num; scalar_t__ ee_version; struct ath5k_rate_pcal_info* ee_rate_tpwr_g; struct ath5k_rate_pcal_info* ee_rate_tpwr_b; struct ath5k_rate_pcal_info* ee_rate_tpwr_a; int ee_misc1; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;


 scalar_t__ AR5K_EEPROM_CHANNEL_DIS ;



 int AR5K_EEPROM_N_2GHZ_CHAN ;
 int AR5K_EEPROM_N_5GHZ_RATE_CHAN ;
 int AR5K_EEPROM_READ (int ,int) ;
 scalar_t__ AR5K_EEPROM_TARGET_PWRSTART (int ) ;
 int AR5K_EEPROM_TARGET_PWR_OFF_11A (scalar_t__) ;
 int AR5K_EEPROM_TARGET_PWR_OFF_11B (scalar_t__) ;
 int AR5K_EEPROM_TARGET_PWR_OFF_11G (scalar_t__) ;
 scalar_t__ AR5K_EEPROM_VERSION_3_2 ;
 int EINVAL ;
 void* ath5k_eeprom_bin2freq (struct ath5k_eeprom_info*,int,unsigned int) ;

__attribute__((used)) static int
ath5k_eeprom_read_target_rate_pwr_info(struct ath5k_hw *ah, unsigned int mode)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_rate_pcal_info *rate_pcal_info;
 u8 *rate_target_pwr_num;
 u32 offset;
 u16 val;
 int i;

 offset = AR5K_EEPROM_TARGET_PWRSTART(ee->ee_misc1);
 rate_target_pwr_num = &ee->ee_rate_target_pwr_num[mode];
 switch (mode) {
 case 130:
  offset += AR5K_EEPROM_TARGET_PWR_OFF_11A(ee->ee_version);
  rate_pcal_info = ee->ee_rate_tpwr_a;
  ee->ee_rate_target_pwr_num[mode] = AR5K_EEPROM_N_5GHZ_RATE_CHAN;
  break;
 case 129:
  offset += AR5K_EEPROM_TARGET_PWR_OFF_11B(ee->ee_version);
  rate_pcal_info = ee->ee_rate_tpwr_b;
  ee->ee_rate_target_pwr_num[mode] = 2;
  break;
 case 128:
  offset += AR5K_EEPROM_TARGET_PWR_OFF_11G(ee->ee_version);
  rate_pcal_info = ee->ee_rate_tpwr_g;
  ee->ee_rate_target_pwr_num[mode] = AR5K_EEPROM_N_2GHZ_CHAN;
  break;
 default:
  return -EINVAL;
 }


 if (ee->ee_version <= AR5K_EEPROM_VERSION_3_2) {
  for (i = 0; i < (*rate_target_pwr_num); i++) {
   AR5K_EEPROM_READ(offset++, val);
   rate_pcal_info[i].freq =
       ath5k_eeprom_bin2freq(ee, (val >> 9) & 0x7f, mode);

   rate_pcal_info[i].target_power_6to24 = ((val >> 3) & 0x3f);
   rate_pcal_info[i].target_power_36 = (val << 3) & 0x3f;

   AR5K_EEPROM_READ(offset++, val);

   if (rate_pcal_info[i].freq == AR5K_EEPROM_CHANNEL_DIS ||
       val == 0) {
    (*rate_target_pwr_num) = i;
    break;
   }

   rate_pcal_info[i].target_power_36 |= ((val >> 13) & 0x7);
   rate_pcal_info[i].target_power_48 = ((val >> 7) & 0x3f);
   rate_pcal_info[i].target_power_54 = ((val >> 1) & 0x3f);
  }
 } else {
  for (i = 0; i < (*rate_target_pwr_num); i++) {
   AR5K_EEPROM_READ(offset++, val);
   rate_pcal_info[i].freq =
       ath5k_eeprom_bin2freq(ee, (val >> 8) & 0xff, mode);

   rate_pcal_info[i].target_power_6to24 = ((val >> 2) & 0x3f);
   rate_pcal_info[i].target_power_36 = (val << 4) & 0x3f;

   AR5K_EEPROM_READ(offset++, val);

   if (rate_pcal_info[i].freq == AR5K_EEPROM_CHANNEL_DIS ||
       val == 0) {
    (*rate_target_pwr_num) = i;
    break;
   }

   rate_pcal_info[i].target_power_36 |= (val >> 12) & 0xf;
   rate_pcal_info[i].target_power_48 = ((val >> 6) & 0x3f);
   rate_pcal_info[i].target_power_54 = (val & 0x3f);
  }
 }

 return 0;
}
