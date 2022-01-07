
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nfval; scalar_t__ index; } ;
struct ath5k_hw {TYPE_1__ ah_nfcal_hist; } ;


 int AR5K_TUNE_CCA_MAX_GOOD_VALUE ;
 int ATH5K_NF_CAL_HIST_MAX ;

void
ath5k_hw_init_nfcal_hist(struct ath5k_hw *ah)
{
 int i;

 ah->ah_nfcal_hist.index = 0;
 for (i = 0; i < ATH5K_NF_CAL_HIST_MAX; i++)
  ah->ah_nfcal_hist.nfval[i] = AR5K_TUNE_CCA_MAX_GOOD_VALUE;
}
