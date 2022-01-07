
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_nfcal_hist {void** nfCalBuffer; int invalidNFcount; void* privNF; scalar_t__ currIndex; } ;
struct ath9k_channel {int chanmode; int channelFlags; int channel; } ;
typedef void* s16 ;
struct TYPE_2__ {struct ath9k_nfcal_hist* nfCalHist; int chanmode; int channelFlags; int channel; } ;


 int AR_PHY_CCA_FILTERWINDOW_LENGTH ;
 int ATH9K_NF_CAL_HIST_MAX ;
 int NUM_NF_READINGS ;
 void* ath9k_hw_get_default_nf (struct ath_hw*,struct ath9k_channel*) ;

void ath9k_init_nfcal_hist_buffer(struct ath_hw *ah,
      struct ath9k_channel *chan)
{
 struct ath9k_nfcal_hist *h;
 s16 default_nf;
 int i, j;

 ah->caldata->channel = chan->channel;
 ah->caldata->channelFlags = chan->channelFlags;
 ah->caldata->chanmode = chan->chanmode;
 h = ah->caldata->nfCalHist;
 default_nf = ath9k_hw_get_default_nf(ah, chan);
 for (i = 0; i < NUM_NF_READINGS; i++) {
  h[i].currIndex = 0;
  h[i].privNF = default_nf;
  h[i].invalidNFcount = AR_PHY_CCA_FILTERWINDOW_LENGTH;
  for (j = 0; j < ATH9K_NF_CAL_HIST_MAX; j++) {
   h[i].nfCalBuffer[j] = default_nf;
  }
 }
}
