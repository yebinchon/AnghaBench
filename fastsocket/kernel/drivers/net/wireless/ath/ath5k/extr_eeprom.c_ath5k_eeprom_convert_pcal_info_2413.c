
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ath5k_pdgain_info {unsigned int pd_points; int* pd_pwr; scalar_t__* pd_step; } ;
struct ath5k_eeprom_info {size_t** ee_pdc_to_idx; unsigned int* ee_n_piers; unsigned int* ee_pd_gains; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info_rf2413 {int* pwr_i; int** pwr; scalar_t__** pddac; scalar_t__* pddac_i; } ;
struct ath5k_chan_pcal_info {int min_pwr; int max_pwr; struct ath5k_pdgain_info* pd_curves; struct ath5k_chan_pcal_info_rf2413 rf2413_info; } ;
typedef int s16 ;


 unsigned int AR5K_EEPROM_N_PD_CURVES ;
 void* AR5K_EEPROM_N_PD_POINTS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ath5k_eeprom_free_pcal_info (struct ath5k_hw*,int) ;
 void* kcalloc (unsigned int,int,int ) ;

__attribute__((used)) static int
ath5k_eeprom_convert_pcal_info_2413(struct ath5k_hw *ah, int mode,
    struct ath5k_chan_pcal_info *chinfo)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_chan_pcal_info_rf2413 *pcinfo;
 u8 *pdgain_idx = ee->ee_pdc_to_idx[mode];
 unsigned int pier, pdg, point;


 for (pier = 0; pier < ee->ee_n_piers[mode]; pier++) {

  pcinfo = &chinfo[pier].rf2413_info;


  chinfo[pier].pd_curves =
    kcalloc(AR5K_EEPROM_N_PD_CURVES,
     sizeof(struct ath5k_pdgain_info),
     GFP_KERNEL);

  if (!chinfo[pier].pd_curves)
   goto err_out;


  for (pdg = 0; pdg < ee->ee_pd_gains[mode]; pdg++) {

   u8 idx = pdgain_idx[pdg];
   struct ath5k_pdgain_info *pd =
     &chinfo[pier].pd_curves[idx];



   if (pdg == ee->ee_pd_gains[mode] - 1)
    pd->pd_points = AR5K_EEPROM_N_PD_POINTS;
   else
    pd->pd_points = AR5K_EEPROM_N_PD_POINTS - 1;


   pd->pd_step = kcalloc(pd->pd_points,
     sizeof(u8), GFP_KERNEL);

   if (!pd->pd_step)
    goto err_out;

   pd->pd_pwr = kcalloc(pd->pd_points,
     sizeof(s16), GFP_KERNEL);

   if (!pd->pd_pwr)
    goto err_out;




   pd->pd_step[0] = pcinfo->pddac_i[pdg];
   pd->pd_pwr[0] = 4 * pcinfo->pwr_i[pdg];

   for (point = 1; point < pd->pd_points; point++) {

    pd->pd_pwr[point] = pd->pd_pwr[point - 1] +
     2 * pcinfo->pwr[pdg][point - 1];

    pd->pd_step[point] = pd->pd_step[point - 1] +
      pcinfo->pddac[pdg][point - 1];

   }


   if (pdg == 0)
    chinfo[pier].min_pwr = pd->pd_pwr[0];


   if (pdg == ee->ee_pd_gains[mode] - 1)
    chinfo[pier].max_pwr =
     pd->pd_pwr[pd->pd_points - 1];
  }
 }

 return 0;

err_out:
 ath5k_eeprom_free_pcal_info(ah, mode);
 return -ENOMEM;
}
