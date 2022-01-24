#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_nfcal_hist {void** nfCalBuffer; int /*<<< orphan*/  invalidNFcount; void* privNF; scalar_t__ currIndex; } ;
struct ath9k_channel {int /*<<< orphan*/  chanmode; int /*<<< orphan*/  channelFlags; int /*<<< orphan*/  channel; } ;
typedef  void* s16 ;
struct TYPE_2__ {struct ath9k_nfcal_hist* nfCalHist; int /*<<< orphan*/  chanmode; int /*<<< orphan*/  channelFlags; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CCA_FILTERWINDOW_LENGTH ; 
 int ATH9K_NF_CAL_HIST_MAX ; 
 int NUM_NF_READINGS ; 
 void* FUNC0 (struct ath_hw*,struct ath9k_channel*) ; 

void FUNC1(struct ath_hw *ah,
				  struct ath9k_channel *chan)
{
	struct ath9k_nfcal_hist *h;
	s16 default_nf;
	int i, j;

	ah->caldata->channel = chan->channel;
	ah->caldata->channelFlags = chan->channelFlags;
	ah->caldata->chanmode = chan->chanmode;
	h = ah->caldata->nfCalHist;
	default_nf = FUNC0(ah, chan);
	for (i = 0; i < NUM_NF_READINGS; i++) {
		h[i].currIndex = 0;
		h[i].privNF = default_nf;
		h[i].invalidNFcount = AR_PHY_CCA_FILTERWINDOW_LENGTH;
		for (j = 0; j < ATH9K_NF_CAL_HIST_MAX; j++) {
			h[i].nfCalBuffer[j] = default_nf;
		}
	}
}