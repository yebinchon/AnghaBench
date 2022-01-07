
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct ieee80211_channel {int center_freq; } ;
struct ath5k_pdgain_info {int pd_points; int pd_step; int * pd_pwr; } ;
struct TYPE_4__ {size_t** tmpL; size_t** tmpR; int txp_offset; int txp_setup; int txp_min_idx; void* txp_max_pwr; void* txp_min_pwr; } ;
struct ath5k_eeprom_info {size_t** ee_pdc_to_idx; int* ee_pd_gains; } ;
struct TYPE_3__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_2__ ah_txpower; TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info {int min_pwr; int max_pwr; scalar_t__ freq; struct ath5k_pdgain_info* pd_curves; } ;
typedef int s16 ;


 int AR5K_EEPROM_N_PD_GAINS ;
 int AR5K_EEPROM_POWER_TABLE_SIZE ;



 int EINVAL ;
 int ath5k_combine_linear_pcdac_curves (struct ath5k_hw*,int*,int*,int) ;
 int ath5k_combine_pwr_to_pdadc_curves (struct ath5k_hw*,int*,int*,int) ;
 int ath5k_create_power_curve (int,int,int *,int ,int,size_t*,size_t) ;
 int ath5k_fill_pwr_to_pcdac_table (struct ath5k_hw*,int*,int*) ;
 int ath5k_get_chan_pcal_surrounding_piers (struct ath5k_hw*,struct ieee80211_channel*,struct ath5k_chan_pcal_info**,struct ath5k_chan_pcal_info**) ;
 void* ath5k_get_interpolated_value (int ,int,int,int,int) ;
 int ath5k_get_linear_pcdac_min (int ,int ,int *,int *) ;
 int max (int ,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static int
ath5k_setup_channel_powertable(struct ath5k_hw *ah,
   struct ieee80211_channel *channel,
   u8 ee_mode, u8 type)
{
 struct ath5k_pdgain_info *pdg_L, *pdg_R;
 struct ath5k_chan_pcal_info *pcinfo_L;
 struct ath5k_chan_pcal_info *pcinfo_R;
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 u8 *pdg_curve_to_idx = ee->ee_pdc_to_idx[ee_mode];
 s16 table_min[AR5K_EEPROM_N_PD_GAINS];
 s16 table_max[AR5K_EEPROM_N_PD_GAINS];
 u8 *tmpL;
 u8 *tmpR;
 u32 target = channel->center_freq;
 int pdg, i;


 ath5k_get_chan_pcal_surrounding_piers(ah, channel,
      &pcinfo_L,
      &pcinfo_R);



 for (pdg = 0; pdg < ee->ee_pd_gains[ee_mode]; pdg++) {





  u8 idx = pdg_curve_to_idx[pdg];


  pdg_L = &pcinfo_L->pd_curves[idx];
  pdg_R = &pcinfo_R->pd_curves[idx];


  tmpL = ah->ah_txpower.tmpL[pdg];
  tmpR = ah->ah_txpower.tmpR[pdg];







  table_min[pdg] = min(pdg_L->pd_pwr[0],
     pdg_R->pd_pwr[0]) / 2;

  table_max[pdg] = max(pdg_L->pd_pwr[pdg_L->pd_points - 1],
    pdg_R->pd_pwr[pdg_R->pd_points - 1]) / 2;




  switch (type) {
  case 130:


   table_min[pdg] = min(pdg_L->pd_pwr[0],
      pdg_R->pd_pwr[0]);

   table_max[pdg] =
    max(pdg_L->pd_pwr[pdg_L->pd_points - 1],
     pdg_R->pd_pwr[pdg_R->pd_points - 1]);






   if (!(ee->ee_pd_gains[ee_mode] > 1 && pdg == 0)) {

    table_min[pdg] =
     ath5k_get_linear_pcdac_min(pdg_L->pd_step,
        pdg_R->pd_step,
        pdg_L->pd_pwr,
        pdg_R->pd_pwr);





    if (table_max[pdg] - table_min[pdg] > 126)
     table_min[pdg] = table_max[pdg] - 126;
   }


  case 129:
  case 128:

   ath5k_create_power_curve(table_min[pdg],
      table_max[pdg],
      pdg_L->pd_pwr,
      pdg_L->pd_step,
      pdg_L->pd_points, tmpL, type);




   if (pcinfo_L == pcinfo_R)
    continue;

   ath5k_create_power_curve(table_min[pdg],
      table_max[pdg],
      pdg_R->pd_pwr,
      pdg_R->pd_step,
      pdg_R->pd_points, tmpR, type);
   break;
  default:
   return -EINVAL;
  }






  for (i = 0; (i < (u16) (table_max[pdg] - table_min[pdg])) &&
  (i < AR5K_EEPROM_POWER_TABLE_SIZE); i++) {
   tmpL[i] = (u8) ath5k_get_interpolated_value(target,
       (s16) pcinfo_L->freq,
       (s16) pcinfo_R->freq,
       (s16) tmpL[i],
       (s16) tmpR[i]);
  }
 }
 ah->ah_txpower.txp_min_pwr = ath5k_get_interpolated_value(target,
     (s16) pcinfo_L->freq,
     (s16) pcinfo_R->freq,
     pcinfo_L->min_pwr, pcinfo_R->min_pwr);

 ah->ah_txpower.txp_max_pwr = ath5k_get_interpolated_value(target,
     (s16) pcinfo_L->freq,
     (s16) pcinfo_R->freq,
     pcinfo_L->max_pwr, pcinfo_R->max_pwr);


 switch (type) {
 case 130:



  ath5k_combine_linear_pcdac_curves(ah, table_min, table_max,
      ee->ee_pd_gains[ee_mode]);




  ah->ah_txpower.txp_offset = 64 - (table_max[0] / 2);
  break;
 case 129:


  ath5k_fill_pwr_to_pcdac_table(ah, table_min, table_max);


  ah->ah_txpower.txp_min_idx = 0;
  ah->ah_txpower.txp_offset = 0;
  break;
 case 128:


  ath5k_combine_pwr_to_pdadc_curves(ah, table_min, table_max,
      ee->ee_pd_gains[ee_mode]);



  ah->ah_txpower.txp_offset = table_min[0];
  break;
 default:
  return -EINVAL;
 }

 ah->ah_txpower.txp_setup = 1;

 return 0;
}
