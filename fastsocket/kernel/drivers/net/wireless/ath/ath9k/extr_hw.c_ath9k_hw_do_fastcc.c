
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_hw {TYPE_3__* curchan; TYPE_2__* caldata; scalar_t__ chip_fullsleep; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath9k_channel {scalar_t__ channel; int channelFlags; } ;
struct TYPE_6__ {scalar_t__ channel; int channelFlags; } ;
struct TYPE_5__ {int rtt_done; int done_txclcal_once; int done_txiqcal_once; } ;
struct TYPE_4__ {scalar_t__ ath_bus_type; } ;


 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ ATH_PCI ;
 int CHANNEL_ALL ;
 int CHANNEL_HALF ;
 int CHANNEL_QUARTER ;
 int EINVAL ;
 int RESET ;
 int ar9002_hw_load_ani_reg (struct ath_hw*,struct ath9k_channel*) ;
 int ar9003_mci_2g5g_switch (struct ath_hw*,int) ;
 int ath9k_hw_channel_change (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_check_alive (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_loadnf (struct ath_hw*,TYPE_3__*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ath9k_hw_do_fastcc(struct ath_hw *ah, struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int ret;

 if (AR_SREV_9280(ah) && common->bus_ops->ath_bus_type == ATH_PCI)
  goto fail;

 if (ah->chip_fullsleep)
  goto fail;

 if (!ah->curchan)
  goto fail;

 if (chan->channel == ah->curchan->channel)
  goto fail;

 if ((ah->curchan->channelFlags | chan->channelFlags) &
     (CHANNEL_HALF | CHANNEL_QUARTER))
  goto fail;

 if ((chan->channelFlags & CHANNEL_ALL) !=
     (ah->curchan->channelFlags & CHANNEL_ALL))
  goto fail;

 if (!ath9k_hw_check_alive(ah))
  goto fail;





 if (AR_SREV_9462(ah) && (ah->caldata &&
     (!ah->caldata->done_txiqcal_once ||
      !ah->caldata->done_txclcal_once ||
      !ah->caldata->rtt_done)))
  goto fail;

 ath_dbg(common, RESET, "FastChannelChange for %d -> %d\n",
  ah->curchan->channel, chan->channel);

 ret = ath9k_hw_channel_change(ah, chan);
 if (!ret)
  goto fail;

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_2g5g_switch(ah, 0);

 ath9k_hw_loadnf(ah, ah->curchan);
 ath9k_hw_start_nfcal(ah, 1);

 if (AR_SREV_9271(ah))
  ar9002_hw_load_ani_reg(ah, chan);

 return 0;
fail:
 return -EINVAL;
}
