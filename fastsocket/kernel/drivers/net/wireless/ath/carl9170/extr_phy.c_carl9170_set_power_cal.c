
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ar9170_calibration_target_power_legacy {int freq; int * power; } ;
struct ar9170_calibration_target_power_ht {int freq; int * power; } ;
struct TYPE_2__ {struct ar9170_calibration_target_power_ht* cal_tgt_pwr_2G_ht40; struct ar9170_calibration_target_power_ht* cal_tgt_pwr_2G_ht20; struct ar9170_calibration_target_power_ht* cal_tgt_pwr_5G_ht40; struct ar9170_calibration_target_power_ht* cal_tgt_pwr_5G_ht20; struct ar9170_calibration_target_power_legacy* cal_tgt_pwr_2G_ofdm; struct ar9170_calibration_target_power_legacy* cal_tgt_pwr_2G_cck; struct ar9170_calibration_target_power_legacy* cal_tgt_pwr_5G; } ;
struct ar9170 {int* power_5G_leg; int* power_2G_cck; int* power_2G_ofdm; int* power_5G_ht20; int* power_5G_ht40; int* power_2G_ht20; int* power_2G_ht40; TYPE_1__ eeprom; } ;
typedef enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;


 int AR5416_MAX_NUM_TGT_PWRS ;
 int AR5416_NUM_2G_CCK_TARGET_PWRS ;
 int AR5416_NUM_2G_OFDM_TARGET_PWRS ;
 int AR5416_NUM_5G_TARGET_PWRS ;
 int BUG () ;
 int carl9170_calc_ctl (struct ar9170*,int,int) ;
 int carl9170_find_freq_idx (int,int*,int) ;
 int carl9170_interpolate_u8 (int,int,int ,int,int ) ;

__attribute__((used)) static void carl9170_set_power_cal(struct ar9170 *ar, u32 freq,
       enum carl9170_bw bw)
{
 struct ar9170_calibration_target_power_legacy *ctpl;
 struct ar9170_calibration_target_power_ht *ctph;
 u8 *ctpres;
 int ntargets;
 int idx, i, n;
 u8 f;
 u8 pwr_freqs[AR5416_MAX_NUM_TGT_PWRS];

 if (freq < 3000)
  f = freq - 2300;
 else
  f = (freq - 4800) / 5;






 for (i = 0; i < 3; i++) {
  switch (i) {
  case 0:
   ctpl = &ar->eeprom.cal_tgt_pwr_5G[0];
   ntargets = AR5416_NUM_5G_TARGET_PWRS;
   ctpres = ar->power_5G_leg;
   break;
  case 1:
   ctpl = &ar->eeprom.cal_tgt_pwr_2G_cck[0];
   ntargets = AR5416_NUM_2G_CCK_TARGET_PWRS;
   ctpres = ar->power_2G_cck;
   break;
  case 2:
   ctpl = &ar->eeprom.cal_tgt_pwr_2G_ofdm[0];
   ntargets = AR5416_NUM_2G_OFDM_TARGET_PWRS;
   ctpres = ar->power_2G_ofdm;
   break;
  default:
   BUG();
  }

  for (n = 0; n < ntargets; n++) {
   if (ctpl[n].freq == 0xff)
    break;
   pwr_freqs[n] = ctpl[n].freq;
  }
  ntargets = n;
  idx = carl9170_find_freq_idx(ntargets, pwr_freqs, f);
  for (n = 0; n < 4; n++)
   ctpres[n] = carl9170_interpolate_u8(f,
    ctpl[idx + 0].freq, ctpl[idx + 0].power[n],
    ctpl[idx + 1].freq, ctpl[idx + 1].power[n]);
 }


 for (i = 0; i < 4; i++) {
  switch (i) {
  case 0:
   ctph = &ar->eeprom.cal_tgt_pwr_5G_ht20[0];
   ntargets = AR5416_NUM_5G_TARGET_PWRS;
   ctpres = ar->power_5G_ht20;
   break;
  case 1:
   ctph = &ar->eeprom.cal_tgt_pwr_5G_ht40[0];
   ntargets = AR5416_NUM_5G_TARGET_PWRS;
   ctpres = ar->power_5G_ht40;
   break;
  case 2:
   ctph = &ar->eeprom.cal_tgt_pwr_2G_ht20[0];
   ntargets = AR5416_NUM_2G_OFDM_TARGET_PWRS;
   ctpres = ar->power_2G_ht20;
   break;
  case 3:
   ctph = &ar->eeprom.cal_tgt_pwr_2G_ht40[0];
   ntargets = AR5416_NUM_2G_OFDM_TARGET_PWRS;
   ctpres = ar->power_2G_ht40;
   break;
  default:
   BUG();
  }

  for (n = 0; n < ntargets; n++) {
   if (ctph[n].freq == 0xff)
    break;
   pwr_freqs[n] = ctph[n].freq;
  }
  ntargets = n;
  idx = carl9170_find_freq_idx(ntargets, pwr_freqs, f);
  for (n = 0; n < 8; n++)
   ctpres[n] = carl9170_interpolate_u8(f,
    ctph[idx + 0].freq, ctph[idx + 0].power[n],
    ctph[idx + 1].freq, ctph[idx + 1].power[n]);
 }


 carl9170_calc_ctl(ar, freq, bw);
}
