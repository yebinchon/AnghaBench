
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ath5k_eeprom_info {int** ee_pdc_to_idx; int* ee_x_gain; int* ee_pd_gains; int* ee_n_piers; struct ath5k_chan_pcal_info* ee_pwr_cal_g; int ee_header; struct ath5k_chan_pcal_info* ee_pwr_cal_b; struct ath5k_chan_pcal_info* ee_pwr_cal_a; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info_rf2413 {int* pwr_i; int* pddac_i; int** pwr; int** pddac; } ;
struct ath5k_chan_pcal_info {struct ath5k_chan_pcal_info_rf2413 rf2413_info; } ;


 int AR5K_EEPROM_HDR_11A (int ) ;
 int AR5K_EEPROM_HDR_11B (int ) ;
 int AR5K_EEPROM_HDR_11G (int ) ;



 int AR5K_EEPROM_N_2GHZ_CHAN_2413 ;
 int AR5K_EEPROM_N_5GHZ_CHAN ;
 int AR5K_EEPROM_N_PD_CURVES ;
 int AR5K_EEPROM_READ (int ,int) ;
 int EINVAL ;
 scalar_t__ ath5k_cal_data_offset_2413 (struct ath5k_eeprom_info*,int) ;
 int ath5k_eeprom_convert_pcal_info_2413 (struct ath5k_hw*,int,struct ath5k_chan_pcal_info*) ;
 int ath5k_eeprom_init_11a_pcal_freq (struct ath5k_hw*,scalar_t__) ;
 int ath5k_eeprom_init_11bg_2413 (struct ath5k_hw*,int,scalar_t__) ;

__attribute__((used)) static int
ath5k_eeprom_read_pcal_info_2413(struct ath5k_hw *ah, int mode)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_chan_pcal_info_rf2413 *pcinfo;
 struct ath5k_chan_pcal_info *chinfo;
 u8 *pdgain_idx = ee->ee_pdc_to_idx[mode];
 u32 offset;
 int idx, i;
 u16 val;
 u8 pd_gains = 0;






 for (idx = AR5K_EEPROM_N_PD_CURVES - 1; idx >= 0; idx--) {

  if ((ee->ee_x_gain[mode] >> idx) & 0x1)
   pdgain_idx[pd_gains++] = idx;

 }
 ee->ee_pd_gains[mode] = pd_gains;

 if (pd_gains == 0)
  return -EINVAL;

 offset = ath5k_cal_data_offset_2413(ee, mode);
 switch (mode) {
 case 130:
  if (!AR5K_EEPROM_HDR_11A(ee->ee_header))
   return 0;

  ath5k_eeprom_init_11a_pcal_freq(ah, offset);
  offset += AR5K_EEPROM_N_5GHZ_CHAN / 2;
  chinfo = ee->ee_pwr_cal_a;
  break;
 case 129:
  if (!AR5K_EEPROM_HDR_11B(ee->ee_header))
   return 0;

  ath5k_eeprom_init_11bg_2413(ah, mode, offset);
  offset += AR5K_EEPROM_N_2GHZ_CHAN_2413 / 2;
  chinfo = ee->ee_pwr_cal_b;
  break;
 case 128:
  if (!AR5K_EEPROM_HDR_11G(ee->ee_header))
   return 0;

  ath5k_eeprom_init_11bg_2413(ah, mode, offset);
  offset += AR5K_EEPROM_N_2GHZ_CHAN_2413 / 2;
  chinfo = ee->ee_pwr_cal_g;
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < ee->ee_n_piers[mode]; i++) {
  pcinfo = &chinfo[i].rf2413_info;





  AR5K_EEPROM_READ(offset++, val);
  pcinfo->pwr_i[0] = val & 0x1f;
  pcinfo->pddac_i[0] = (val >> 5) & 0x7f;
  pcinfo->pwr[0][0] = (val >> 12) & 0xf;

  AR5K_EEPROM_READ(offset++, val);
  pcinfo->pddac[0][0] = val & 0x3f;
  pcinfo->pwr[0][1] = (val >> 6) & 0xf;
  pcinfo->pddac[0][1] = (val >> 10) & 0x3f;

  AR5K_EEPROM_READ(offset++, val);
  pcinfo->pwr[0][2] = val & 0xf;
  pcinfo->pddac[0][2] = (val >> 4) & 0x3f;

  pcinfo->pwr[0][3] = 0;
  pcinfo->pddac[0][3] = 0;

  if (pd_gains > 1) {





   pcinfo->pwr_i[1] = (val >> 10) & 0x1f;

   pcinfo->pddac_i[1] = (val >> 15) & 0x1;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac_i[1] |= (val & 0x3F) << 1;

   pcinfo->pwr[1][0] = (val >> 6) & 0xf;
   pcinfo->pddac[1][0] = (val >> 10) & 0x3f;

   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pwr[1][1] = val & 0xf;
   pcinfo->pddac[1][1] = (val >> 4) & 0x3f;
   pcinfo->pwr[1][2] = (val >> 10) & 0xf;

   pcinfo->pddac[1][2] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac[1][2] |= (val & 0xF) << 2;

   pcinfo->pwr[1][3] = 0;
   pcinfo->pddac[1][3] = 0;
  } else if (pd_gains == 1) {




   pcinfo->pwr[0][3] = (val >> 10) & 0xf;

   pcinfo->pddac[0][3] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac[0][3] |= (val & 0xF) << 2;
  }





  if (pd_gains > 2) {
   pcinfo->pwr_i[2] = (val >> 4) & 0x1f;
   pcinfo->pddac_i[2] = (val >> 9) & 0x7f;

   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pwr[2][0] = (val >> 0) & 0xf;
   pcinfo->pddac[2][0] = (val >> 4) & 0x3f;
   pcinfo->pwr[2][1] = (val >> 10) & 0xf;

   pcinfo->pddac[2][1] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac[2][1] |= (val & 0xF) << 2;

   pcinfo->pwr[2][2] = (val >> 4) & 0xf;
   pcinfo->pddac[2][2] = (val >> 8) & 0x3f;

   pcinfo->pwr[2][3] = 0;
   pcinfo->pddac[2][3] = 0;
  } else if (pd_gains == 2) {
   pcinfo->pwr[1][3] = (val >> 4) & 0xf;
   pcinfo->pddac[1][3] = (val >> 8) & 0x3f;
  }

  if (pd_gains > 3) {
   pcinfo->pwr_i[3] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pwr_i[3] |= ((val >> 0) & 0x7) << 2;

   pcinfo->pddac_i[3] = (val >> 3) & 0x7f;
   pcinfo->pwr[3][0] = (val >> 10) & 0xf;
   pcinfo->pddac[3][0] = (val >> 14) & 0x3;

   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac[3][0] |= (val & 0xF) << 2;
   pcinfo->pwr[3][1] = (val >> 4) & 0xf;
   pcinfo->pddac[3][1] = (val >> 8) & 0x3f;

   pcinfo->pwr[3][2] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pwr[3][2] |= ((val >> 0) & 0x3) << 2;

   pcinfo->pddac[3][2] = (val >> 2) & 0x3f;
   pcinfo->pwr[3][3] = (val >> 8) & 0xf;

   pcinfo->pddac[3][3] = (val >> 12) & 0xF;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pddac[3][3] |= ((val >> 0) & 0x3) << 4;
  } else if (pd_gains == 3) {
   pcinfo->pwr[2][3] = (val >> 14) & 0x3;
   AR5K_EEPROM_READ(offset++, val);
   pcinfo->pwr[2][3] |= ((val >> 0) & 0x3) << 2;

   pcinfo->pddac[2][3] = (val >> 2) & 0x3f;
  }
 }

 return ath5k_eeprom_convert_pcal_info_2413(ah, mode, chinfo);
}
