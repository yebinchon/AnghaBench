
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_nfcal_hist {int index; int * nfval; } ;
struct ath5k_hw {struct ath5k_nfcal_hist ah_nfcal_hist; } ;
typedef int s16 ;


 int ATH5K_NF_CAL_HIST_MAX ;

__attribute__((used)) static void ath5k_hw_update_nfcal_hist(struct ath5k_hw *ah, s16 noise_floor)
{
 struct ath5k_nfcal_hist *hist = &ah->ah_nfcal_hist;
 hist->index = (hist->index + 1) & (ATH5K_NF_CAL_HIST_MAX - 1);
 hist->nfval[hist->index] = noise_floor;
}
