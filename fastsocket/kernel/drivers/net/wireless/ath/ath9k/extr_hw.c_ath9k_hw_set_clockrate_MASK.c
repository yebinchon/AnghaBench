#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct TYPE_7__ {int hw_caps; } ;
struct ath_hw {scalar_t__ curchan; TYPE_3__ caps; } ;
struct ath_common {unsigned int clockrate; TYPE_4__* hw; } ;
struct TYPE_8__ {struct ieee80211_conf conf; } ;
struct TYPE_5__ {scalar_t__ band; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 unsigned int ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_2GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_5GHZ_OFDM ; 
 unsigned int ATH9K_CLOCK_RATE_CCK ; 
 int ATH9K_HW_CAP_FASTCLOCK ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ieee80211_conf*) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	struct ieee80211_conf *conf = &FUNC4(ah)->hw->conf;
	struct ath_common *common = FUNC4(ah);
	unsigned int clockrate;

	/* AR9287 v1.3+ uses async FIFO and runs the MAC at 117 MHz */
	if (FUNC0(ah) && FUNC1(ah))
		clockrate = 117;
	else if (!ah->curchan) /* should really check for CCK instead */
		clockrate = ATH9K_CLOCK_RATE_CCK;
	else if (conf->chandef.chan->band == IEEE80211_BAND_2GHZ)
		clockrate = ATH9K_CLOCK_RATE_2GHZ_OFDM;
	else if (ah->caps.hw_caps & ATH9K_HW_CAP_FASTCLOCK)
		clockrate = ATH9K_CLOCK_FAST_RATE_5GHZ_OFDM;
	else
		clockrate = ATH9K_CLOCK_RATE_5GHZ_OFDM;

	if (FUNC5(conf))
		clockrate *= 2;

	if (ah->curchan) {
		if (FUNC2(ah->curchan))
			clockrate /= 2;
		if (FUNC3(ah->curchan))
			clockrate /= 4;
	}

	common->clockrate = clockrate;
}