
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct TYPE_7__ {int hw_caps; } ;
struct ath_hw {scalar_t__ curchan; TYPE_3__ caps; } ;
struct ath_common {unsigned int clockrate; TYPE_4__* hw; } ;
struct TYPE_8__ {struct ieee80211_conf conf; } ;
struct TYPE_5__ {scalar_t__ band; } ;


 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287_13_OR_LATER (struct ath_hw*) ;
 unsigned int ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM ;
 unsigned int ATH9K_CLOCK_RATE_2GHZ_OFDM ;
 unsigned int ATH9K_CLOCK_RATE_5GHZ_OFDM ;
 unsigned int ATH9K_CLOCK_RATE_CCK ;
 int ATH9K_HW_CAP_FASTCLOCK ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IS_CHAN_HALF_RATE (scalar_t__) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (scalar_t__) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ conf_is_ht40 (struct ieee80211_conf*) ;

__attribute__((used)) static void ath9k_hw_set_clockrate(struct ath_hw *ah)
{
 struct ieee80211_conf *conf = &ath9k_hw_common(ah)->hw->conf;
 struct ath_common *common = ath9k_hw_common(ah);
 unsigned int clockrate;


 if (AR_SREV_9287(ah) && AR_SREV_9287_13_OR_LATER(ah))
  clockrate = 117;
 else if (!ah->curchan)
  clockrate = ATH9K_CLOCK_RATE_CCK;
 else if (conf->chandef.chan->band == IEEE80211_BAND_2GHZ)
  clockrate = ATH9K_CLOCK_RATE_2GHZ_OFDM;
 else if (ah->caps.hw_caps & ATH9K_HW_CAP_FASTCLOCK)
  clockrate = ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM;
 else
  clockrate = ATH9K_CLOCK_RATE_5GHZ_OFDM;

 if (conf_is_ht40(conf))
  clockrate *= 2;

 if (ah->curchan) {
  if (IS_CHAN_HALF_RATE(ah->curchan))
   clockrate /= 2;
  if (IS_CHAN_QUARTER_RATE(ah->curchan))
   clockrate /= 4;
 }

 common->clockrate = clockrate;
}
