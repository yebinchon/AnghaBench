
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ath5k_eeprom_info {int* ee_n_piers; struct ath5k_chan_pcal_info* ee_pwr_cal_g; int ee_header; struct ath5k_chan_pcal_info* ee_pwr_cal_b; struct ath5k_chan_pcal_info* ee_pwr_cal_a; int ee_version; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info_rf5111 {int pcdac_max; int pcdac_min; int* pwr; int pcdac; } ;
struct ath5k_chan_pcal_info {int freq; struct ath5k_chan_pcal_info_rf5111 rf5111_info; } ;


 int AR5K_EEPROM_GROUP1_OFFSET ;
 int AR5K_EEPROM_GROUP2_OFFSET ;
 int AR5K_EEPROM_GROUP3_OFFSET ;
 int AR5K_EEPROM_GROUP4_OFFSET ;
 int AR5K_EEPROM_GROUPS_START (int ) ;
 int AR5K_EEPROM_HDR_11A (int ) ;
 int AR5K_EEPROM_HDR_11B (int ) ;
 int AR5K_EEPROM_HDR_11G (int ) ;



 int AR5K_EEPROM_PCDAC_M ;
 int AR5K_EEPROM_POWER_M ;
 int AR5K_EEPROM_READ (int ,int) ;
 int EINVAL ;
 int ath5k_eeprom_convert_pcal_info_5111 (struct ath5k_hw*,int,struct ath5k_chan_pcal_info*) ;
 int ath5k_eeprom_init_11a_pcal_freq (struct ath5k_hw*,int ) ;
 int ath5k_get_pcdac_intercepts (struct ath5k_hw*,int,int,int ) ;

__attribute__((used)) static int
ath5k_eeprom_read_pcal_info_5111(struct ath5k_hw *ah, int mode)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_chan_pcal_info *pcal;
 int offset, ret;
 int i;
 u16 val;

 offset = AR5K_EEPROM_GROUPS_START(ee->ee_version);
 switch (mode) {
 case 130:
  if (!AR5K_EEPROM_HDR_11A(ee->ee_header))
   return 0;

  ret = ath5k_eeprom_init_11a_pcal_freq(ah,
   offset + AR5K_EEPROM_GROUP1_OFFSET);
  if (ret < 0)
   return ret;

  offset += AR5K_EEPROM_GROUP2_OFFSET;
  pcal = ee->ee_pwr_cal_a;
  break;
 case 129:
  if (!AR5K_EEPROM_HDR_11B(ee->ee_header) &&
      !AR5K_EEPROM_HDR_11G(ee->ee_header))
   return 0;

  pcal = ee->ee_pwr_cal_b;
  offset += AR5K_EEPROM_GROUP3_OFFSET;


  pcal[0].freq = 2412;
  pcal[1].freq = 2447;
  pcal[2].freq = 2484;
  ee->ee_n_piers[mode] = 3;
  break;
 case 128:
  if (!AR5K_EEPROM_HDR_11G(ee->ee_header))
   return 0;

  pcal = ee->ee_pwr_cal_g;
  offset += AR5K_EEPROM_GROUP4_OFFSET;


  pcal[0].freq = 2312;
  pcal[1].freq = 2412;
  pcal[2].freq = 2484;
  ee->ee_n_piers[mode] = 3;
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < ee->ee_n_piers[mode]; i++) {
  struct ath5k_chan_pcal_info_rf5111 *cdata =
   &pcal[i].rf5111_info;

  AR5K_EEPROM_READ(offset++, val);
  cdata->pcdac_max = ((val >> 10) & AR5K_EEPROM_PCDAC_M);
  cdata->pcdac_min = ((val >> 4) & AR5K_EEPROM_PCDAC_M);
  cdata->pwr[0] = ((val << 2) & AR5K_EEPROM_POWER_M);

  AR5K_EEPROM_READ(offset++, val);
  cdata->pwr[0] |= ((val >> 14) & 0x3);
  cdata->pwr[1] = ((val >> 8) & AR5K_EEPROM_POWER_M);
  cdata->pwr[2] = ((val >> 2) & AR5K_EEPROM_POWER_M);
  cdata->pwr[3] = ((val << 4) & AR5K_EEPROM_POWER_M);

  AR5K_EEPROM_READ(offset++, val);
  cdata->pwr[3] |= ((val >> 12) & 0xf);
  cdata->pwr[4] = ((val >> 6) & AR5K_EEPROM_POWER_M);
  cdata->pwr[5] = (val & AR5K_EEPROM_POWER_M);

  AR5K_EEPROM_READ(offset++, val);
  cdata->pwr[6] = ((val >> 10) & AR5K_EEPROM_POWER_M);
  cdata->pwr[7] = ((val >> 4) & AR5K_EEPROM_POWER_M);
  cdata->pwr[8] = ((val << 2) & AR5K_EEPROM_POWER_M);

  AR5K_EEPROM_READ(offset++, val);
  cdata->pwr[8] |= ((val >> 14) & 0x3);
  cdata->pwr[9] = ((val >> 8) & AR5K_EEPROM_POWER_M);
  cdata->pwr[10] = ((val >> 2) & AR5K_EEPROM_POWER_M);

  ath5k_get_pcdac_intercepts(ah, cdata->pcdac_min,
   cdata->pcdac_max, cdata->pcdac);
 }

 return ath5k_eeprom_convert_pcal_info_5111(ah, mode, pcal);
}
