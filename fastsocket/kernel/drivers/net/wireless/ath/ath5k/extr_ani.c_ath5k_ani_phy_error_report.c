
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_ani_state {scalar_t__ ofdm_errors; scalar_t__ cck_errors; } ;
struct ath5k_hw {int ani_tasklet; struct ath5k_ani_state ani_state; } ;
typedef enum ath5k_phy_error_code { ____Placeholder_ath5k_phy_error_code } ath5k_phy_error_code ;


 int AR5K_RX_PHY_ERROR_CCK_TIMING ;
 int AR5K_RX_PHY_ERROR_OFDM_TIMING ;
 scalar_t__ ATH5K_ANI_CCK_TRIG_HIGH ;
 scalar_t__ ATH5K_ANI_OFDM_TRIG_HIGH ;
 int tasklet_schedule (int *) ;

void
ath5k_ani_phy_error_report(struct ath5k_hw *ah,
      enum ath5k_phy_error_code phyerr)
{
 struct ath5k_ani_state *as = &ah->ani_state;

 if (phyerr == AR5K_RX_PHY_ERROR_OFDM_TIMING) {
  as->ofdm_errors++;
  if (as->ofdm_errors > ATH5K_ANI_OFDM_TRIG_HIGH)
   tasklet_schedule(&ah->ani_tasklet);
 } else if (phyerr == AR5K_RX_PHY_ERROR_CCK_TIMING) {
  as->cck_errors++;
  if (as->cck_errors > ATH5K_ANI_CCK_TRIG_HIGH)
   tasklet_schedule(&ah->ani_tasklet);
 }
}
