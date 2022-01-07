
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_eeprom_info {struct ath5k_chan_pcal_info* ee_pwr_cal_g; struct ath5k_chan_pcal_info* ee_pwr_cal_b; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info {int dummy; } ;




 int AR5K_EEPROM_N_2GHZ_CHAN_2413 ;
 int EINVAL ;
 int ath5k_eeprom_read_freq_list (struct ath5k_hw*,int*,int ,struct ath5k_chan_pcal_info*,unsigned int) ;

__attribute__((used)) static inline int
ath5k_eeprom_init_11bg_2413(struct ath5k_hw *ah, unsigned int mode, int offset)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_chan_pcal_info *pcal;

 switch (mode) {
 case 129:
  pcal = ee->ee_pwr_cal_b;
  break;
 case 128:
  pcal = ee->ee_pwr_cal_g;
  break;
 default:
  return -EINVAL;
 }

 ath5k_eeprom_read_freq_list(ah, &offset,
  AR5K_EEPROM_N_2GHZ_CHAN_2413, pcal,
  mode);

 return 0;
}
